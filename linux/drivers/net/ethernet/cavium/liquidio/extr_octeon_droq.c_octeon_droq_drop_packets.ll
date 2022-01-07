; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_droq.c_octeon_droq_drop_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_droq.c_octeon_droq_drop_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.octeon_droq = type { i64, i64, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.octeon_droq_info = type { i64 }

@OCTNET_FRM_LENGTH_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"DROQ: In drop: pkt with len 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, %struct.octeon_droq*, i64)* @octeon_droq_drop_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_droq_drop_packets(%struct.octeon_device* %0, %struct.octeon_droq* %1, i64 %2) #0 {
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca %struct.octeon_droq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.octeon_droq_info*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store %struct.octeon_droq* %1, %struct.octeon_droq** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %77, %3
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %80

14:                                               ; preds = %10
  %15 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %16 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %15, i32 0, i32 5
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %19 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.octeon_droq_info*
  store %struct.octeon_droq_info* %24, %struct.octeon_droq_info** %9, align 8
  %25 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %9, align 8
  %26 = bitcast %struct.octeon_droq_info* %25 to i32*
  %27 = call i32 @octeon_swap_8B_data(i32* %26, i32 2)
  %28 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %9, align 8
  %29 = getelementptr inbounds %struct.octeon_droq_info, %struct.octeon_droq_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %14
  %33 = load i64, i64* @OCTNET_FRM_LENGTH_SIZE, align 8
  %34 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %9, align 8
  %35 = getelementptr inbounds %struct.octeon_droq_info, %struct.octeon_droq_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, %33
  store i64 %37, i64* %35, align 8
  %38 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %9, align 8
  %39 = getelementptr inbounds %struct.octeon_droq_info, %struct.octeon_droq_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %42 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %40
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %43, align 8
  %48 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %49 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.octeon_droq_info*, %struct.octeon_droq_info** %9, align 8
  %52 = getelementptr inbounds %struct.octeon_droq_info, %struct.octeon_droq_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i64 @octeon_droq_get_bufcount(i32 %50, i64 %53)
  store i64 %54, i64* %8, align 8
  br label %61

55:                                               ; preds = %14
  %56 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %57 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = call i32 @dev_err(i32* %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i64 1, i64* %8, align 8
  br label %61

61:                                               ; preds = %55, %32
  %62 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %63 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %67 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @incr_index(i64 %64, i64 %65, i32 %68)
  %70 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %71 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.octeon_droq*, %struct.octeon_droq** %5, align 8
  %74 = getelementptr inbounds %struct.octeon_droq, %struct.octeon_droq* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, %72
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %61
  %78 = load i64, i64* %7, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %7, align 8
  br label %10

80:                                               ; preds = %10
  ret void
}

declare dso_local i32 @octeon_swap_8B_data(i32*, i32) #1

declare dso_local i64 @octeon_droq_get_bufcount(i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @incr_index(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
