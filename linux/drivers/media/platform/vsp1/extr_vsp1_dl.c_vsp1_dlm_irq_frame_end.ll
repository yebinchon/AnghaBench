; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dlm_irq_frame_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dlm_irq_frame_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_dl_manager = type { i32, %struct.TYPE_3__*, %struct.TYPE_3__*, %struct.TYPE_3__*, i32, i64, %struct.vsp1_device* }
%struct.TYPE_3__ = type { i32 }
%struct.vsp1_device = type { i32 }

@VI6_STATUS = common dso_local global i32 0, align 4
@VSP1_DL_FRAME_END_COMPLETED = common dso_local global i32 0, align 4
@VSP1_DL_FRAME_END_WRITEBACK = common dso_local global i32 0, align 4
@VSP1_DL_FRAME_END_INTERNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vsp1_dlm_irq_frame_end(%struct.vsp1_dl_manager* %0) #0 {
  %2 = alloca %struct.vsp1_dl_manager*, align 8
  %3 = alloca %struct.vsp1_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vsp1_dl_manager* %0, %struct.vsp1_dl_manager** %2, align 8
  %6 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %7 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %6, i32 0, i32 6
  %8 = load %struct.vsp1_device*, %struct.vsp1_device** %7, align 8
  store %struct.vsp1_device* %8, %struct.vsp1_device** %3, align 8
  %9 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %10 = load i32, i32* @VI6_STATUS, align 4
  %11 = call i32 @vsp1_read(%struct.vsp1_device* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %13 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %16 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %15, i32 0, i32 5
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %1
  %20 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %21 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = call i32 @__vsp1_dl_list_put(%struct.TYPE_3__* %22)
  %24 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %25 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %24, i32 0, i32 3
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %25, align 8
  %26 = load i32, i32* @VSP1_DL_FRAME_END_COMPLETED, align 4
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %128

29:                                               ; preds = %1
  %30 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %31 = call i64 @vsp1_dl_list_hw_update_pending(%struct.vsp1_dl_manager* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %128

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %37 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @VI6_STATUS_FLD_STD(i32 %38)
  %40 = and i32 %35, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %128

43:                                               ; preds = %34
  %44 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %45 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = icmp ne %struct.TYPE_3__* %46, null
  br i1 %47, label %48, label %69

48:                                               ; preds = %43
  %49 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %50 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %49, i32 0, i32 3
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @VSP1_DL_FRAME_END_WRITEBACK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %48
  %58 = load i32, i32* @VSP1_DL_FRAME_END_WRITEBACK, align 4
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* @VSP1_DL_FRAME_END_WRITEBACK, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %64 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %63, i32 0, i32 3
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, %62
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %57, %48, %43
  %70 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %71 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %70, i32 0, i32 2
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = icmp ne %struct.TYPE_3__* %72, null
  br i1 %73, label %74, label %110

74:                                               ; preds = %69
  %75 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %76 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @VSP1_DL_FRAME_END_INTERNAL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  %84 = load i32, i32* @VSP1_DL_FRAME_END_INTERNAL, align 4
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %74
  %88 = load i32, i32* @VSP1_DL_FRAME_END_INTERNAL, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %91 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %90, i32 0, i32 2
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %89
  store i32 %95, i32* %93, align 4
  %96 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %97 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %96, i32 0, i32 3
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = call i32 @__vsp1_dl_list_put(%struct.TYPE_3__* %98)
  %100 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %101 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %100, i32 0, i32 2
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %104 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %103, i32 0, i32 3
  store %struct.TYPE_3__* %102, %struct.TYPE_3__** %104, align 8
  %105 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %106 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %105, i32 0, i32 2
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %106, align 8
  %107 = load i32, i32* @VSP1_DL_FRAME_END_COMPLETED, align 4
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %87, %69
  %111 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %112 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %111, i32 0, i32 1
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = icmp ne %struct.TYPE_3__* %113, null
  br i1 %114, label %115, label %127

115:                                              ; preds = %110
  %116 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %117 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %116, i32 0, i32 1
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = call i32 @vsp1_dl_list_hw_enqueue(%struct.TYPE_3__* %118)
  %120 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %121 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %120, i32 0, i32 1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %124 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %123, i32 0, i32 2
  store %struct.TYPE_3__* %122, %struct.TYPE_3__** %124, align 8
  %125 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %126 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %125, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %126, align 8
  br label %127

127:                                              ; preds = %115, %110
  br label %128

128:                                              ; preds = %127, %42, %33, %19
  %129 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %2, align 8
  %130 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %129, i32 0, i32 0
  %131 = call i32 @spin_unlock(i32* %130)
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @vsp1_read(%struct.vsp1_device*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__vsp1_dl_list_put(%struct.TYPE_3__*) #1

declare dso_local i64 @vsp1_dl_list_hw_update_pending(%struct.vsp1_dl_manager*) #1

declare dso_local i32 @VI6_STATUS_FLD_STD(i32) #1

declare dso_local i32 @vsp1_dl_list_hw_enqueue(%struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
