; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_delete_clsflower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_delete_clsflower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.i40e_cloud_filter = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to delete cloud filter, err %s\0A\00", align 1
@I40E_FLAG_FD_SB_TO_CLOUD_FILTER = common dso_local global i32 0, align 4
@I40E_FLAG_FD_SB_INACTIVE = common dso_local global i32 0, align 4
@I40E_FLAG_FD_SB_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, %struct.flow_cls_offload*)* @i40e_delete_clsflower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_delete_clsflower(%struct.i40e_vsi* %0, %struct.flow_cls_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca %struct.flow_cls_offload*, align 8
  %6 = alloca %struct.i40e_cloud_filter*, align 8
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %5, align 8
  store %struct.i40e_cloud_filter* null, %struct.i40e_cloud_filter** %6, align 8
  %9 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %10 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %9, i32 0, i32 0
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  store %struct.i40e_pf* %11, %struct.i40e_pf** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %13 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %14 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %13, i32 0, i32 0
  %15 = call %struct.i40e_cloud_filter* @i40e_find_cloud_filter(%struct.i40e_vsi* %12, i32* %14)
  store %struct.i40e_cloud_filter* %15, %struct.i40e_cloud_filter** %6, align 8
  %16 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %6, align 8
  %17 = icmp ne %struct.i40e_cloud_filter* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %102

21:                                               ; preds = %2
  %22 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %6, align 8
  %23 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %22, i32 0, i32 1
  %24 = call i32 @hash_del(i32* %23)
  %25 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %6, align 8
  %26 = getelementptr inbounds %struct.i40e_cloud_filter, %struct.i40e_cloud_filter* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %31 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %6, align 8
  %32 = call i32 @i40e_add_del_cloud_filter_big_buf(%struct.i40e_vsi* %30, %struct.i40e_cloud_filter* %31, i32 0)
  store i32 %32, i32* %8, align 4
  br label %37

33:                                               ; preds = %21
  %34 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %35 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %6, align 8
  %36 = call i32 @i40e_add_del_cloud_filter(%struct.i40e_vsi* %34, %struct.i40e_cloud_filter* %35, i32 0)
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.i40e_cloud_filter*, %struct.i40e_cloud_filter** %6, align 8
  %39 = call i32 @kfree(%struct.i40e_cloud_filter* %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %37
  %43 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %44 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %48 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %47, i32 0, i32 2
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @i40e_stat_str(%struct.TYPE_6__* %48, i32 %49)
  %51 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %54 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @i40e_aq_rc_to_posix(i32 %52, i32 %57)
  store i32 %58, i32* %3, align 4
  br label %102

59:                                               ; preds = %37
  %60 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %61 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %65 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %101, label %68

68:                                               ; preds = %59
  %69 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %70 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @I40E_FLAG_FD_SB_TO_CLOUD_FILTER, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %68
  %76 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %77 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @I40E_FLAG_FD_SB_INACTIVE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %100, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* @I40E_FLAG_FD_SB_ENABLED, align 4
  %84 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %85 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* @I40E_FLAG_FD_SB_TO_CLOUD_FILTER, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %91 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* @I40E_FLAG_FD_SB_INACTIVE, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %97 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %82, %75, %68
  br label %101

101:                                              ; preds = %100, %59
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %42, %18
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.i40e_cloud_filter* @i40e_find_cloud_filter(%struct.i40e_vsi*, i32*) #1

declare dso_local i32 @hash_del(i32*) #1

declare dso_local i32 @i40e_add_del_cloud_filter_big_buf(%struct.i40e_vsi*, %struct.i40e_cloud_filter*, i32) #1

declare dso_local i32 @i40e_add_del_cloud_filter(%struct.i40e_vsi*, %struct.i40e_cloud_filter*, i32) #1

declare dso_local i32 @kfree(%struct.i40e_cloud_filter*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @i40e_stat_str(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @i40e_aq_rc_to_posix(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
