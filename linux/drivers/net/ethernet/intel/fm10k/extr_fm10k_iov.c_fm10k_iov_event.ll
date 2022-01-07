; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_iov_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_iov_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { %struct.fm10k_iov_data*, %struct.fm10k_hw.0 }
%struct.fm10k_iov_data = type { i32, %struct.fm10k_vf_info* }
%struct.fm10k_vf_info = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.fm10k_hw*, %struct.TYPE_8__*)* }
%struct.fm10k_hw = type opaque
%struct.fm10k_hw.0 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.fm10k_hw.1*, %struct.fm10k_vf_info*)* }
%struct.fm10k_hw.1 = type opaque

@FM10K_EICR = common dso_local global i32 0, align 4
@FM10K_EICR_VFLR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_iov_event(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca %struct.fm10k_hw.0*, align 8
  %5 = alloca %struct.fm10k_iov_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fm10k_vf_info*, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %3, align 8
  %9 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %10 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %9, i32 0, i32 1
  store %struct.fm10k_hw.0* %10, %struct.fm10k_hw.0** %4, align 8
  %11 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %12 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %11, i32 0, i32 0
  %13 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %12, align 8
  %14 = call i32 @READ_ONCE(%struct.fm10k_iov_data* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %97

17:                                               ; preds = %1
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %20 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %19, i32 0, i32 0
  %21 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %20, align 8
  store %struct.fm10k_iov_data* %21, %struct.fm10k_iov_data** %5, align 8
  %22 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %5, align 8
  %23 = icmp ne %struct.fm10k_iov_data* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %17
  br label %95

25:                                               ; preds = %17
  %26 = load %struct.fm10k_hw.0*, %struct.fm10k_hw.0** %4, align 8
  %27 = load i32, i32* @FM10K_EICR, align 4
  %28 = call i32 @fm10k_read_reg(%struct.fm10k_hw.0* %26, i32 %27)
  %29 = load i32, i32* @FM10K_EICR_VFLR, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %25
  br label %95

33:                                               ; preds = %25
  %34 = load %struct.fm10k_hw.0*, %struct.fm10k_hw.0** %4, align 8
  %35 = call i32 @FM10K_PFVFLRE(i32 1)
  %36 = call i32 @fm10k_read_reg(%struct.fm10k_hw.0* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %37, 32
  store i32 %38, i32* %6, align 4
  %39 = load %struct.fm10k_hw.0*, %struct.fm10k_hw.0** %4, align 8
  %40 = call i32 @FM10K_PFVFLRE(i32 0)
  %41 = call i32 @fm10k_read_reg(%struct.fm10k_hw.0* %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %5, align 8
  %45 = getelementptr inbounds %struct.fm10k_iov_data, %struct.fm10k_iov_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 64, %47
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %90, %33
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %7, align 4
  %57 = icmp ne i32 %55, 0
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi i1 [ false, %51 ], [ %57, %54 ]
  br i1 %59, label %60, label %94

60:                                               ; preds = %58
  %61 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %5, align 8
  %62 = getelementptr inbounds %struct.fm10k_iov_data, %struct.fm10k_iov_data* %61, i32 0, i32 1
  %63 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %63, i64 %65
  store %struct.fm10k_vf_info* %66, %struct.fm10k_vf_info** %8, align 8
  %67 = load i32, i32* %6, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %90

70:                                               ; preds = %60
  %71 = load %struct.fm10k_hw.0*, %struct.fm10k_hw.0** %4, align 8
  %72 = getelementptr inbounds %struct.fm10k_hw.0, %struct.fm10k_hw.0* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32 (%struct.fm10k_hw.1*, %struct.fm10k_vf_info*)*, i32 (%struct.fm10k_hw.1*, %struct.fm10k_vf_info*)** %74, align 8
  %76 = load %struct.fm10k_hw.0*, %struct.fm10k_hw.0** %4, align 8
  %77 = bitcast %struct.fm10k_hw.0* %76 to %struct.fm10k_hw.1*
  %78 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %79 = call i32 %75(%struct.fm10k_hw.1* %77, %struct.fm10k_vf_info* %78)
  %80 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %81 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32 (%struct.fm10k_hw*, %struct.TYPE_8__*)*, i32 (%struct.fm10k_hw*, %struct.TYPE_8__*)** %83, align 8
  %85 = load %struct.fm10k_hw.0*, %struct.fm10k_hw.0** %4, align 8
  %86 = bitcast %struct.fm10k_hw.0* %85 to %struct.fm10k_hw*
  %87 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %8, align 8
  %88 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %87, i32 0, i32 0
  %89 = call i32 %84(%struct.fm10k_hw* %86, %struct.TYPE_8__* %88)
  br label %90

90:                                               ; preds = %70, %69
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %6, align 4
  br label %51

94:                                               ; preds = %58
  br label %95

95:                                               ; preds = %94, %32, %24
  %96 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %16
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @READ_ONCE(%struct.fm10k_iov_data*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @fm10k_read_reg(%struct.fm10k_hw.0*, i32) #1

declare dso_local i32 @FM10K_PFVFLRE(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
