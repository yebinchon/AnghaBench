; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_tx.c_mlx4_en_free_tx_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_tx.c_mlx4_en_free_tx_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_tx_ring = type { i32, i32, i32, i64, i32 (%struct.mlx4_en_priv*, %struct.mlx4_en_tx_ring*, i32, i32, i32)*, i32, i64 }
%struct.mlx4_en_priv = type opaque
%struct.mlx4_en_priv.0 = type { i32 }

@DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Freeing Tx buf - cons:0x%x prod:0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Tx consumer passed producer!\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Freed %d uncompleted tx descriptors\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_free_tx_buf(%struct.net_device* %0, %struct.mlx4_en_tx_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.mlx4_en_tx_ring*, align 8
  %6 = alloca %struct.mlx4_en_priv.0*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.mlx4_en_tx_ring* %1, %struct.mlx4_en_tx_ring** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.mlx4_en_priv.0* @netdev_priv(%struct.net_device* %8)
  store %struct.mlx4_en_priv.0* %9, %struct.mlx4_en_priv.0** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %11 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %14 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load i32, i32* @DRV, align 4
  %18 = load %struct.mlx4_en_priv.0*, %struct.mlx4_en_priv.0** %6, align 8
  %19 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i32, %struct.mlx4_en_priv.0*, i8*, i32, ...) @en_dbg(i32 %17, %struct.mlx4_en_priv.0* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  %26 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %27 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %30 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sub nsw i32 %28, %31
  %33 = sext i32 %32 to i64
  %34 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %2
  %39 = load %struct.mlx4_en_priv.0*, %struct.mlx4_en_priv.0** %6, align 8
  %40 = call i64 @netif_msg_tx_err(%struct.mlx4_en_priv.0* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load %struct.mlx4_en_priv.0*, %struct.mlx4_en_priv.0** %6, align 8
  %44 = call i32 @en_warn(%struct.mlx4_en_priv.0* %43, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %38
  store i32 0, i32* %3, align 4
  br label %101

46:                                               ; preds = %2
  br label %47

47:                                               ; preds = %55, %46
  %48 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %49 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %47
  %56 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %57 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %56, i32 0, i32 4
  %58 = load i32 (%struct.mlx4_en_priv*, %struct.mlx4_en_tx_ring*, i32, i32, i32)*, i32 (%struct.mlx4_en_priv*, %struct.mlx4_en_tx_ring*, i32, i32, i32)** %57, align 8
  %59 = load %struct.mlx4_en_priv.0*, %struct.mlx4_en_priv.0** %6, align 8
  %60 = bitcast %struct.mlx4_en_priv.0* %59 to %struct.mlx4_en_priv*
  %61 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %62 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %63 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %66 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %64, %67
  %69 = call i32 %58(%struct.mlx4_en_priv* %60, %struct.mlx4_en_tx_ring* %61, i32 %68, i32 0, i32 0)
  %70 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %71 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %73 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %76 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %47

81:                                               ; preds = %47
  %82 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %83 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %5, align 8
  %88 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %87, i32 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @netdev_tx_reset_queue(i64 %89)
  br label %91

91:                                               ; preds = %86, %81
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32, i32* @DRV, align 4
  %96 = load %struct.mlx4_en_priv.0*, %struct.mlx4_en_priv.0** %6, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 (i32, %struct.mlx4_en_priv.0*, i8*, i32, ...) @en_dbg(i32 %95, %struct.mlx4_en_priv.0* %96, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %94, %91
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %45
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.mlx4_en_priv.0* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @en_dbg(i32, %struct.mlx4_en_priv.0*, i8*, i32, ...) #1

declare dso_local i64 @netif_msg_tx_err(%struct.mlx4_en_priv.0*) #1

declare dso_local i32 @en_warn(%struct.mlx4_en_priv.0*, i8*) #1

declare dso_local i32 @netdev_tx_reset_queue(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
