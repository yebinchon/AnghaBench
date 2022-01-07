; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c_lio_enable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c_lio_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_droq = type { i32, %struct.octeon_device*, i64, i32 }
%struct.octeon_device = type { i32 }
%struct.octeon_instr_queue = type { i32, %struct.octeon_device*, i32, i64, i32 }

@CN23XX_INTR_RESEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lio_enable_irq(%struct.octeon_droq* %0, %struct.octeon_instr_queue* %1) #0 {
  %3 = alloca %struct.octeon_droq*, align 8
  %4 = alloca %struct.octeon_instr_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.octeon_device*, align 8
  store %struct.octeon_droq* %0, %struct.octeon_droq** %3, align 8
  store %struct.octeon_instr_queue* %1, %struct.octeon_instr_queue** %4, align 8
  store %struct.octeon_device* null, %struct.octeon_device** %7, align 8
  %8 = load %struct.octeon_droq*, %struct.octeon_droq** %3, align 8
  %9 = icmp ne %struct.octeon_droq* %8, null
  br i1 %9, label %10, label %29

10:                                               ; preds = %2
  %11 = load %struct.octeon_droq*, %struct.octeon_droq** %3, align 8
  %12 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %11, i32 0, i32 3
  %13 = call i64 @atomic_read(i32* %12)
  store i64 %13, i64* %6, align 8
  %14 = load %struct.octeon_droq*, %struct.octeon_droq** %3, align 8
  %15 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %6, align 8
  %18 = sub nsw i64 %16, %17
  %19 = load %struct.octeon_droq*, %struct.octeon_droq** %3, align 8
  %20 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @writel(i64 %18, i32 %21)
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.octeon_droq*, %struct.octeon_droq** %3, align 8
  %25 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load %struct.octeon_droq*, %struct.octeon_droq** %3, align 8
  %27 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %26, i32 0, i32 1
  %28 = load %struct.octeon_device*, %struct.octeon_device** %27, align 8
  store %struct.octeon_device* %28, %struct.octeon_device** %7, align 8
  br label %29

29:                                               ; preds = %10, %2
  %30 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %31 = icmp ne %struct.octeon_instr_queue* %30, null
  br i1 %31, label %32, label %60

32:                                               ; preds = %29
  %33 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %34 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %33, i32 0, i32 2
  %35 = call i32 @spin_lock_bh(i32* %34)
  %36 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %37 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %40 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @writel(i64 %38, i32 %41)
  %43 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %44 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %47 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = sub nsw i64 %49, %45
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %47, align 8
  %52 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %53 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %55 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %54, i32 0, i32 2
  %56 = call i32 @spin_unlock_bh(i32* %55)
  %57 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %58 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %57, i32 0, i32 1
  %59 = load %struct.octeon_device*, %struct.octeon_device** %58, align 8
  store %struct.octeon_device* %59, %struct.octeon_device** %7, align 8
  br label %60

60:                                               ; preds = %32, %29
  %61 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %62 = icmp ne %struct.octeon_device* %61, null
  br i1 %62, label %63, label %101

63:                                               ; preds = %60
  %64 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %65 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %69 = call i64 @OCTEON_CN23XX_VF(%struct.octeon_device* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %101

71:                                               ; preds = %67, %63
  %72 = load %struct.octeon_droq*, %struct.octeon_droq** %3, align 8
  %73 = icmp ne %struct.octeon_droq* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load i32, i32* @CN23XX_INTR_RESEND, align 4
  %76 = load %struct.octeon_droq*, %struct.octeon_droq** %3, align 8
  %77 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @writeq(i32 %75, i32 %78)
  br label %100

80:                                               ; preds = %71
  %81 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %82 = icmp ne %struct.octeon_instr_queue* %81, null
  br i1 %82, label %83, label %99

83:                                               ; preds = %80
  %84 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %85 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @readq(i32 %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* %5, align 4
  %89 = sext i32 %88 to i64
  %90 = and i64 %89, -4294967296
  %91 = load i32, i32* @CN23XX_INTR_RESEND, align 4
  %92 = sext i32 %91 to i64
  %93 = or i64 %90, %92
  %94 = trunc i64 %93 to i32
  %95 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %4, align 8
  %96 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @writeq(i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %83, %80
  br label %100

100:                                              ; preds = %99, %74
  br label %101

101:                                              ; preds = %100, %67, %60
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i64 @OCTEON_CN23XX_VF(%struct.octeon_device*) #1

declare dso_local i32 @writeq(i32, i32) #1

declare dso_local i32 @readq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
