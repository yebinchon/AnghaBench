; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_r_mib_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_r_mib_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32 }

@SWITCH_COUNTER_NUM = common dso_local global i64 0, align 8
@KS_MIB_TOTAL_RX_1 = common dso_local global i32 0, align 4
@KS_MIB_TOTAL_RX_0 = common dso_local global i32 0, align 4
@TABLE_MIB = common dso_local global i32 0, align 4
@TABLE_READ = common dso_local global i32 0, align 4
@REG_IND_CTRL_0 = common dso_local global i32 0, align 4
@REG_IND_MIB_CHECK = common dso_local global i32 0, align 4
@MIB_COUNTER_VALID = common dso_local global i32 0, align 4
@REG_IND_DATA_LO = common dso_local global i32 0, align 4
@MIB_TOTAL_BYTES_H = common dso_local global i32 0, align 4
@MIB_COUNTER_OVERFLOW = common dso_local global i32 0, align 4
@MIB_PACKET_DROPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_device*, i32, i32, i32*, i32*)* @ksz8795_r_mib_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz8795_r_mib_pkt(%struct.ksz_device* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.ksz_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i64, i64* @SWITCH_COUNTER_NUM, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = sub nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @KS_MIB_TOTAL_RX_1, align 4
  %22 = load i32, i32* @KS_MIB_TOTAL_RX_0, align 4
  %23 = sub nsw i32 %21, %22
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @KS_MIB_TOTAL_RX_0, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* %11, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* @TABLE_MIB, align 4
  %32 = load i32, i32* @TABLE_READ, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @IND_ACC_TABLE(i32 %33)
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %11, align 4
  %37 = load %struct.ksz_device*, %struct.ksz_device** %6, align 8
  %38 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.ksz_device*, %struct.ksz_device** %6, align 8
  %41 = load i32, i32* @REG_IND_CTRL_0, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @ksz_write16(%struct.ksz_device* %40, i32 %41, i32 %42)
  store i32 2, i32* %14, align 4
  br label %44

44:                                               ; preds = %109, %5
  %45 = load i32, i32* %14, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %112

47:                                               ; preds = %44
  %48 = load %struct.ksz_device*, %struct.ksz_device** %6, align 8
  %49 = load i32, i32* @REG_IND_MIB_CHECK, align 4
  %50 = call i32 @ksz_read8(%struct.ksz_device* %48, i32 %49, i32* %13)
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @MIB_COUNTER_VALID, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %108

55:                                               ; preds = %47
  %56 = load %struct.ksz_device*, %struct.ksz_device** %6, align 8
  %57 = load i32, i32* @REG_IND_DATA_LO, align 4
  %58 = call i32 @ksz_read32(%struct.ksz_device* %56, i32 %57, i32* %12)
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 2
  br i1 %60, label %61, label %89

61:                                               ; preds = %55
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @MIB_TOTAL_BYTES_H, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = shl i32 %65, 32
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %67
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, %71
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @MIB_COUNTER_OVERFLOW, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %61
  %80 = load i32, i32* @MIB_TOTAL_BYTES_H, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = shl i32 %82, 32
  store i32 %83, i32* %15, align 4
  %84 = load i32, i32* %15, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %84
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %79, %61
  br label %107

89:                                               ; preds = %55
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* @MIB_COUNTER_OVERFLOW, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i32, i32* @MIB_PACKET_DROPPED, align 4
  %96 = add nsw i32 %95, 1
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, %96
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %89
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* @MIB_PACKET_DROPPED, align 4
  %103 = and i32 %101, %102
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %103
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %100, %88
  br label %112

108:                                              ; preds = %47
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %14, align 4
  br label %44

112:                                              ; preds = %107, %44
  %113 = load %struct.ksz_device*, %struct.ksz_device** %6, align 8
  %114 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %113, i32 0, i32 0
  %115 = call i32 @mutex_unlock(i32* %114)
  ret void
}

declare dso_local i32 @IND_ACC_TABLE(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ksz_write16(%struct.ksz_device*, i32, i32) #1

declare dso_local i32 @ksz_read8(%struct.ksz_device*, i32, i32*) #1

declare dso_local i32 @ksz_read32(%struct.ksz_device*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
