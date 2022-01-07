; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_process_droq_intr_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_cn66xx_device.c_lio_cn6xxx_process_droq_intr_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.TYPE_4__, i64, %struct.octeon_droq** }
%struct.TYPE_4__ = type { i32 }
%struct.octeon_droq = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.octeon_cn6xxx = type { i32 }

@CN6XXX_SLI_PKT_CNT_INT_ENB = common dso_local global i32 0, align 4
@CN6XXX_SLI_PKT_CNT_INT = common dso_local global i32 0, align 4
@CN6XXX_SLI_PKT_TIME_INT = common dso_local global i32 0, align 4
@CN6XXX_SLI_PKT_TIME_INT_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @lio_cn6xxx_process_droq_intr_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_cn6xxx_process_droq_intr_regs(%struct.octeon_device* %0) #0 {
  %2 = alloca %struct.octeon_device*, align 8
  %3 = alloca %struct.octeon_droq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.octeon_cn6xxx*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %2, align 8
  %14 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %15 = load i32, i32* @CN6XXX_SLI_PKT_CNT_INT_ENB, align 4
  %16 = call i32 @octeon_read_csr(%struct.octeon_device* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %18 = load i32, i32* @CN6XXX_SLI_PKT_CNT_INT, align 4
  %19 = call i32 @octeon_read_csr(%struct.octeon_device* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %24 = load i32, i32* @CN6XXX_SLI_PKT_TIME_INT, align 4
  %25 = call i32 @octeon_read_csr(%struct.octeon_device* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %27 = load i32, i32* @CN6XXX_SLI_PKT_TIME_INT_ENB, align 4
  %28 = call i32 @octeon_read_csr(%struct.octeon_device* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %35 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %41 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %117, %1
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %45 = call i32 @MAX_OCTEON_OUTPUT_QUEUES(%struct.octeon_device* %44)
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %120

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @BIT_ULL(i32 %49)
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %117

54:                                               ; preds = %47
  %55 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %56 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %55, i32 0, i32 3
  %57 = load %struct.octeon_droq**, %struct.octeon_droq*** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.octeon_droq*, %struct.octeon_droq** %57, i64 %59
  %61 = load %struct.octeon_droq*, %struct.octeon_droq** %60, align 8
  store %struct.octeon_droq* %61, %struct.octeon_droq** %3, align 8
  %62 = load %struct.octeon_droq*, %struct.octeon_droq** %3, align 8
  %63 = call i32 @octeon_droq_check_hw_for_pkts(%struct.octeon_droq* %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %116

66:                                               ; preds = %54
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @BIT_ULL(i32 %67)
  %69 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %70 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.octeon_droq*, %struct.octeon_droq** %3, align 8
  %74 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %115

78:                                               ; preds = %66
  %79 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %80 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to %struct.octeon_cn6xxx*
  store %struct.octeon_cn6xxx* %82, %struct.octeon_cn6xxx** %13, align 8
  %83 = load %struct.octeon_cn6xxx*, %struct.octeon_cn6xxx** %13, align 8
  %84 = getelementptr inbounds %struct.octeon_cn6xxx, %struct.octeon_cn6xxx* %83, i32 0, i32 0
  %85 = call i32 @spin_lock(i32* %84)
  %86 = load i32, i32* @CN6XXX_SLI_PKT_TIME_INT_ENB, align 4
  store i32 %86, i32* %12, align 4
  %87 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @octeon_read_csr(%struct.octeon_device* %87, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %4, align 4
  %91 = shl i32 1, %90
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %11, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %11, align 4
  %95 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @octeon_write_csr(%struct.octeon_device* %95, i32 %96, i32 %97)
  %99 = load i32, i32* @CN6XXX_SLI_PKT_CNT_INT_ENB, align 4
  store i32 %99, i32* %12, align 4
  %100 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @octeon_read_csr(%struct.octeon_device* %100, i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %4, align 4
  %104 = shl i32 1, %103
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %11, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %11, align 4
  %108 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @octeon_write_csr(%struct.octeon_device* %108, i32 %109, i32 %110)
  %112 = load %struct.octeon_cn6xxx*, %struct.octeon_cn6xxx** %13, align 8
  %113 = getelementptr inbounds %struct.octeon_cn6xxx, %struct.octeon_cn6xxx* %112, i32 0, i32 0
  %114 = call i32 @spin_unlock(i32* %113)
  br label %115

115:                                              ; preds = %78, %66
  br label %116

116:                                              ; preds = %115, %54
  br label %117

117:                                              ; preds = %116, %53
  %118 = load i32, i32* %4, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %4, align 4
  br label %42

120:                                              ; preds = %42
  %121 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %122 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %6, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %6, align 4
  %127 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %128 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %10, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %120
  %136 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %137 = load i32, i32* @CN6XXX_SLI_PKT_TIME_INT, align 4
  %138 = load i32, i32* %6, align 4
  %139 = call i32 @octeon_write_csr(%struct.octeon_device* %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %135, %120
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %140
  %144 = load %struct.octeon_device*, %struct.octeon_device** %2, align 8
  %145 = load i32, i32* @CN6XXX_SLI_PKT_CNT_INT, align 4
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @octeon_write_csr(%struct.octeon_device* %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %143, %140
  ret i32 0
}

declare dso_local i32 @octeon_read_csr(%struct.octeon_device*, i32) #1

declare dso_local i32 @MAX_OCTEON_OUTPUT_QUEUES(%struct.octeon_device*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @octeon_droq_check_hw_for_pkts(%struct.octeon_droq*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @octeon_write_csr(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
