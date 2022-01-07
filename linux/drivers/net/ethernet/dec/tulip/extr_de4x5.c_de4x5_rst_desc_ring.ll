; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_rst_desc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_rst_desc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__*, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }

@STOP_DE4X5 = common dso_local global i32 0, align 4
@DE4X5_RRBA = common dso_local global i32 0, align 4
@NUM_RX_DESC = common dso_local global i32 0, align 4
@DE4X5_TRBA = common dso_local global i32 0, align 4
@R_OWN = common dso_local global i32 0, align 4
@START_DE4X5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @de4x5_rst_desc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de4x5_rst_desc_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de4x5_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %7)
  store %struct.de4x5_private* %8, %struct.de4x5_private** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %13 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %87

17:                                               ; preds = %1
  %18 = load i32, i32* @STOP_DE4X5, align 4
  %19 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %20 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %19, i32 0, i32 9
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @DE4X5_RRBA, align 4
  %23 = call i32 @outl(i64 %21, i32 %22)
  %24 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %25 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %24, i32 0, i32 9
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @NUM_RX_DESC, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = add i64 %26, %29
  %31 = load i32, i32* @DE4X5_TRBA, align 4
  %32 = call i32 @outl(i64 %30, i32 %31)
  %33 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %34 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %33, i32 0, i32 7
  store i64 0, i64* %34, align 8
  %35 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %36 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %35, i32 0, i32 8
  store i64 0, i64* %36, align 8
  %37 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %38 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %37, i32 0, i32 5
  store i64 0, i64* %38, align 8
  %39 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %40 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %57, %17
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %44 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41
  %48 = load i32, i32* @R_OWN, align 4
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %51 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %50, i32 0, i32 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i8* %49, i8** %56, align 8
  br label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %41

60:                                               ; preds = %41
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %76, %60
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %64 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %79

67:                                               ; preds = %61
  %68 = call i8* @cpu_to_le32(i32 0)
  %69 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %70 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %69, i32 0, i32 3
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i8* %68, i8** %75, align 8
  br label %76

76:                                               ; preds = %67
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %61

79:                                               ; preds = %61
  %80 = call i32 (...) @barrier()
  %81 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %82 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, -1
  store i64 %85, i64* %83, align 8
  %86 = load i32, i32* @START_DE4X5, align 4
  br label %87

87:                                               ; preds = %79, %1
  ret void
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @outl(i64, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
