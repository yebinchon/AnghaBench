; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_iov_mbx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_iov.c_fm10k_iov_mbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, %struct.fm10k_iov_data*, %struct.fm10k_hw.3 }
%struct.fm10k_iov_data = type { i32, i32, %struct.fm10k_vf_info* }
%struct.fm10k_vf_info = type { i64, i32, %struct.fm10k_mbx_info }
%struct.fm10k_mbx_info = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 (%struct.fm10k_hw*, %struct.fm10k_mbx_info.0*)*, i32 (%struct.fm10k_hw.1*, %struct.fm10k_mbx_info.2*)* }
%struct.fm10k_hw = type opaque
%struct.fm10k_mbx_info.0 = type opaque
%struct.fm10k_hw.1 = type opaque
%struct.fm10k_mbx_info.2 = type opaque
%struct.fm10k_hw.3 = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.fm10k_hw.4*, %struct.TYPE_11__*)* }
%struct.fm10k_hw.4 = type opaque
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.fm10k_hw.5*, %struct.fm10k_vf_info*)*, i32 (%struct.fm10k_hw.6*, %struct.fm10k_vf_info*)* }
%struct.fm10k_hw.5 = type opaque
%struct.fm10k_hw.6 = type opaque

@FM10K_STATE_OPEN = common dso_local global i64 0, align 8
@FM10K_VFMBX_MSG_MTU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_iov_mbx(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca %struct.fm10k_hw.3*, align 8
  %5 = alloca %struct.fm10k_iov_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fm10k_vf_info*, align 8
  %8 = alloca %struct.fm10k_mbx_info*, align 8
  %9 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %3, align 8
  %10 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %11 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %10, i32 0, i32 2
  store %struct.fm10k_hw.3* %11, %struct.fm10k_hw.3** %4, align 8
  %12 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %13 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %12, i32 0, i32 1
  %14 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %13, align 8
  %15 = call i32 @READ_ONCE(%struct.fm10k_iov_data* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %170

18:                                               ; preds = %1
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %21 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %20, i32 0, i32 1
  %22 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %21, align 8
  store %struct.fm10k_iov_data* %22, %struct.fm10k_iov_data** %5, align 8
  %23 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %5, align 8
  %24 = icmp ne %struct.fm10k_iov_data* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %168

26:                                               ; preds = %18
  %27 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %28 = call i32 @fm10k_mbx_lock(%struct.fm10k_intfc* %27)
  br label %29

29:                                               ; preds = %161, %26
  %30 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %5, align 8
  %31 = getelementptr inbounds %struct.fm10k_iov_data, %struct.fm10k_iov_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %39

35:                                               ; preds = %29
  %36 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %5, align 8
  %37 = getelementptr inbounds %struct.fm10k_iov_data, %struct.fm10k_iov_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  br label %39

39:                                               ; preds = %35, %34
  %40 = phi i32 [ %32, %34 ], [ %38, %35 ]
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %138, %39
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %6, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %45, label %148

45:                                               ; preds = %41
  %46 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %5, align 8
  %47 = getelementptr inbounds %struct.fm10k_iov_data, %struct.fm10k_iov_data* %46, i32 0, i32 2
  %48 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %48, i64 %50
  store %struct.fm10k_vf_info* %51, %struct.fm10k_vf_info** %7, align 8
  %52 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %7, align 8
  %53 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %52, i32 0, i32 2
  store %struct.fm10k_mbx_info* %53, %struct.fm10k_mbx_info** %8, align 8
  %54 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %7, align 8
  %55 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %9, align 4
  %57 = load %struct.fm10k_hw.3*, %struct.fm10k_hw.3** %4, align 8
  %58 = getelementptr inbounds %struct.fm10k_hw.3, %struct.fm10k_hw.3* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i32 (%struct.fm10k_hw.4*, %struct.TYPE_11__*)*, i32 (%struct.fm10k_hw.4*, %struct.TYPE_11__*)** %60, align 8
  %62 = load %struct.fm10k_hw.3*, %struct.fm10k_hw.3** %4, align 8
  %63 = bitcast %struct.fm10k_hw.3* %62 to %struct.fm10k_hw.4*
  %64 = load %struct.fm10k_hw.3*, %struct.fm10k_hw.3** %4, align 8
  %65 = getelementptr inbounds %struct.fm10k_hw.3, %struct.fm10k_hw.3* %64, i32 0, i32 0
  %66 = call i32 %61(%struct.fm10k_hw.4* %63, %struct.TYPE_11__* %65)
  %67 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %7, align 8
  %68 = getelementptr inbounds %struct.fm10k_vf_info, %struct.fm10k_vf_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %89

71:                                               ; preds = %45
  %72 = load %struct.fm10k_hw.3*, %struct.fm10k_hw.3** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @fm10k_glort_valid_pf(%struct.fm10k_hw.3* %72, i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %89, label %76

76:                                               ; preds = %71
  %77 = load %struct.fm10k_hw.3*, %struct.fm10k_hw.3** %4, align 8
  %78 = getelementptr inbounds %struct.fm10k_hw.3, %struct.fm10k_hw.3* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32 (%struct.fm10k_hw.6*, %struct.fm10k_vf_info*)*, i32 (%struct.fm10k_hw.6*, %struct.fm10k_vf_info*)** %80, align 8
  %82 = load %struct.fm10k_hw.3*, %struct.fm10k_hw.3** %4, align 8
  %83 = bitcast %struct.fm10k_hw.3* %82 to %struct.fm10k_hw.6*
  %84 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %7, align 8
  %85 = call i32 %81(%struct.fm10k_hw.6* %83, %struct.fm10k_vf_info* %84)
  %86 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @fm10k_clear_macvlan_queue(%struct.fm10k_intfc* %86, i32 %87, i32 0)
  br label %89

89:                                               ; preds = %76, %71, %45
  %90 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %8, align 8
  %91 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %113, label %94

94:                                               ; preds = %89
  %95 = load %struct.fm10k_hw.3*, %struct.fm10k_hw.3** %4, align 8
  %96 = getelementptr inbounds %struct.fm10k_hw.3, %struct.fm10k_hw.3* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32 (%struct.fm10k_hw.5*, %struct.fm10k_vf_info*)*, i32 (%struct.fm10k_hw.5*, %struct.fm10k_vf_info*)** %98, align 8
  %100 = load %struct.fm10k_hw.3*, %struct.fm10k_hw.3** %4, align 8
  %101 = bitcast %struct.fm10k_hw.3* %100 to %struct.fm10k_hw.5*
  %102 = load %struct.fm10k_vf_info*, %struct.fm10k_vf_info** %7, align 8
  %103 = call i32 %99(%struct.fm10k_hw.5* %101, %struct.fm10k_vf_info* %102)
  %104 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %8, align 8
  %105 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32 (%struct.fm10k_hw.1*, %struct.fm10k_mbx_info.2*)*, i32 (%struct.fm10k_hw.1*, %struct.fm10k_mbx_info.2*)** %106, align 8
  %108 = load %struct.fm10k_hw.3*, %struct.fm10k_hw.3** %4, align 8
  %109 = bitcast %struct.fm10k_hw.3* %108 to %struct.fm10k_hw.1*
  %110 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %8, align 8
  %111 = bitcast %struct.fm10k_mbx_info* %110 to %struct.fm10k_mbx_info.2*
  %112 = call i32 %107(%struct.fm10k_hw.1* %109, %struct.fm10k_mbx_info.2* %111)
  br label %113

113:                                              ; preds = %94, %89
  %114 = load %struct.fm10k_hw.3*, %struct.fm10k_hw.3** %4, align 8
  %115 = getelementptr inbounds %struct.fm10k_hw.3, %struct.fm10k_hw.3* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @FM10K_STATE_OPEN, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %138

120:                                              ; preds = %113
  %121 = load %struct.fm10k_hw.3*, %struct.fm10k_hw.3** %4, align 8
  %122 = getelementptr inbounds %struct.fm10k_hw.3, %struct.fm10k_hw.3* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32 (%struct.TYPE_11__*, i32)*, i32 (%struct.TYPE_11__*, i32)** %124, align 8
  %126 = load %struct.fm10k_hw.3*, %struct.fm10k_hw.3** %4, align 8
  %127 = getelementptr inbounds %struct.fm10k_hw.3, %struct.fm10k_hw.3* %126, i32 0, i32 0
  %128 = load i32, i32* @FM10K_VFMBX_MSG_MTU, align 4
  %129 = call i32 %125(%struct.TYPE_11__* %127, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %120
  %132 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %133 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %133, align 8
  %136 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %137 = call i32 @fm10k_service_event_schedule(%struct.fm10k_intfc* %136)
  br label %148

138:                                              ; preds = %120, %113
  %139 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %8, align 8
  %140 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load i32 (%struct.fm10k_hw*, %struct.fm10k_mbx_info.0*)*, i32 (%struct.fm10k_hw*, %struct.fm10k_mbx_info.0*)** %141, align 8
  %143 = load %struct.fm10k_hw.3*, %struct.fm10k_hw.3** %4, align 8
  %144 = bitcast %struct.fm10k_hw.3* %143 to %struct.fm10k_hw*
  %145 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %8, align 8
  %146 = bitcast %struct.fm10k_mbx_info* %145 to %struct.fm10k_mbx_info.0*
  %147 = call i32 %142(%struct.fm10k_hw* %144, %struct.fm10k_mbx_info.0* %146)
  br label %41

148:                                              ; preds = %131, %41
  %149 = load i32, i32* %6, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load i32, i32* %6, align 4
  %153 = add nsw i32 %152, 1
  %154 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %5, align 8
  %155 = getelementptr inbounds %struct.fm10k_iov_data, %struct.fm10k_iov_data* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  br label %165

156:                                              ; preds = %148
  %157 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %5, align 8
  %158 = getelementptr inbounds %struct.fm10k_iov_data, %struct.fm10k_iov_data* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %156
  %162 = load %struct.fm10k_iov_data*, %struct.fm10k_iov_data** %5, align 8
  %163 = getelementptr inbounds %struct.fm10k_iov_data, %struct.fm10k_iov_data* %162, i32 0, i32 0
  store i32 0, i32* %163, align 8
  br label %29

164:                                              ; preds = %156
  br label %165

165:                                              ; preds = %164, %151
  %166 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %167 = call i32 @fm10k_mbx_unlock(%struct.fm10k_intfc* %166)
  br label %168

168:                                              ; preds = %165, %25
  %169 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %168, %17
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @READ_ONCE(%struct.fm10k_iov_data*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @fm10k_mbx_lock(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_glort_valid_pf(%struct.fm10k_hw.3*, i32) #1

declare dso_local i32 @fm10k_clear_macvlan_queue(%struct.fm10k_intfc*, i32, i32) #1

declare dso_local i32 @fm10k_service_event_schedule(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_mbx_unlock(%struct.fm10k_intfc*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
