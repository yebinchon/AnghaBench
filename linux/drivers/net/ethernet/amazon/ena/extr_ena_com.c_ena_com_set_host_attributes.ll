; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_set_host_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_set_host_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_com_admin_queue, %struct.ena_host_attribute }
%struct.ena_com_admin_queue = type { i32 }
%struct.ena_host_attribute = type { i32, i32, i32 }
%struct.ena_admin_set_feat_cmd = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ena_admin_set_feat_resp = type { i32 }
%struct.ena_admin_aq_entry = type { i32 }
%struct.ena_admin_acq_entry = type { i32 }

@ENA_ADMIN_SET_FEATURE = common dso_local global i32 0, align 4
@ENA_ADMIN_HOST_ATTR_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"memory address set failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to set host attributes: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_set_host_attributes(%struct.ena_com_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca %struct.ena_host_attribute*, align 8
  %5 = alloca %struct.ena_com_admin_queue*, align 8
  %6 = alloca %struct.ena_admin_set_feat_cmd, align 4
  %7 = alloca %struct.ena_admin_set_feat_resp, align 4
  %8 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %3, align 8
  %9 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %10 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %9, i32 0, i32 1
  store %struct.ena_host_attribute* %10, %struct.ena_host_attribute** %4, align 8
  %11 = call i32 @memset(%struct.ena_admin_set_feat_cmd* %6, i32 0, i32 20)
  %12 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %13 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %12, i32 0, i32 0
  store %struct.ena_com_admin_queue* %13, %struct.ena_com_admin_queue** %5, align 8
  %14 = load i32, i32* @ENA_ADMIN_SET_FEATURE, align 4
  %15 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %6, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @ENA_ADMIN_HOST_ATTR_CONFIG, align 4
  %18 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %6, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %21 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %6, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load %struct.ena_host_attribute*, %struct.ena_host_attribute** %4, align 8
  %25 = getelementptr inbounds %struct.ena_host_attribute, %struct.ena_host_attribute* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ena_com_mem_addr_set(%struct.ena_com_dev* %20, i32* %23, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %2, align 4
  br label %68

34:                                               ; preds = %1
  %35 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %36 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %6, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load %struct.ena_host_attribute*, %struct.ena_host_attribute** %4, align 8
  %40 = getelementptr inbounds %struct.ena_host_attribute, %struct.ena_host_attribute* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ena_com_mem_addr_set(%struct.ena_com_dev* %35, i32* %38, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %34
  %47 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %2, align 4
  br label %68

49:                                               ; preds = %34
  %50 = load %struct.ena_host_attribute*, %struct.ena_host_attribute** %4, align 8
  %51 = getelementptr inbounds %struct.ena_host_attribute, %struct.ena_host_attribute* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.ena_admin_set_feat_cmd, %struct.ena_admin_set_feat_cmd* %6, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %5, align 8
  %57 = bitcast %struct.ena_admin_set_feat_cmd* %6 to %struct.ena_admin_aq_entry*
  %58 = bitcast %struct.ena_admin_set_feat_resp* %7 to %struct.ena_admin_acq_entry*
  %59 = call i32 @ena_com_execute_admin_command(%struct.ena_com_admin_queue* %56, %struct.ena_admin_aq_entry* %57, i32 20, %struct.ena_admin_acq_entry* %58, i32 4)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = load i32, i32* %8, align 4
  %65 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %49
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %46, %31
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @memset(%struct.ena_admin_set_feat_cmd*, i32, i32) #1

declare dso_local i32 @ena_com_mem_addr_set(%struct.ena_com_dev*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @ena_com_execute_admin_command(%struct.ena_com_admin_queue*, %struct.ena_admin_aq_entry*, i32, %struct.ena_admin_acq_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
