; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_qmi.c_ath10k_qmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_snoc = type { %struct.ath10k_qmi* }
%struct.ath10k_qmi = type { i32, i32, i32, i32, i32, %struct.ath10k* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WLFW_BDF_DOWNLOAD_REQ_MSG_V01_MAX_MSG_LEN = common dso_local global i32 0, align 4
@ath10k_qmi_ops = common dso_local global i32 0, align 4
@qmi_msg_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"ath10k_qmi_driver_event\00", align 1
@WQ_UNBOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to allocate workqueue\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@ath10k_qmi_driver_event_work = common dso_local global i32 0, align 4
@WLFW_SERVICE_ID_V01 = common dso_local global i32 0, align 4
@WLFW_SERVICE_VERS_V01 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_qmi_init(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k_snoc*, align 8
  %7 = alloca %struct.ath10k_qmi*, align 8
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %10 = call %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k* %9)
  store %struct.ath10k_snoc* %10, %struct.ath10k_snoc** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ath10k_qmi* @kzalloc(i32 32, i32 %11)
  store %struct.ath10k_qmi* %12, %struct.ath10k_qmi** %7, align 8
  %13 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %7, align 8
  %14 = icmp ne %struct.ath10k_qmi* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %87

18:                                               ; preds = %2
  %19 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %20 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %7, align 8
  %21 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %20, i32 0, i32 5
  store %struct.ath10k* %19, %struct.ath10k** %21, align 8
  %22 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %7, align 8
  %23 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %6, align 8
  %24 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %23, i32 0, i32 0
  store %struct.ath10k_qmi* %22, %struct.ath10k_qmi** %24, align 8
  %25 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ath10k_qmi_setup_msa_resources(%struct.ath10k_qmi* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %83

31:                                               ; preds = %18
  %32 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %7, align 8
  %33 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %32, i32 0, i32 0
  %34 = load i32, i32* @WLFW_BDF_DOWNLOAD_REQ_MSG_V01_MAX_MSG_LEN, align 4
  %35 = load i32, i32* @qmi_msg_handler, align 4
  %36 = call i32 @qmi_handle_init(i32* %33, i32 %34, i32* @ath10k_qmi_ops, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %83

40:                                               ; preds = %31
  %41 = load i32, i32* @WQ_UNBOUND, align 4
  %42 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %41, i32 1)
  %43 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %7, align 8
  %44 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %7, align 8
  %46 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %40
  %50 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %51 = call i32 @ath10k_err(%struct.ath10k* %50, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EFAULT, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %79

54:                                               ; preds = %40
  %55 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %7, align 8
  %56 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %55, i32 0, i32 4
  %57 = call i32 @INIT_LIST_HEAD(i32* %56)
  %58 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %7, align 8
  %59 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %58, i32 0, i32 3
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %7, align 8
  %62 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %61, i32 0, i32 2
  %63 = load i32, i32* @ath10k_qmi_driver_event_work, align 4
  %64 = call i32 @INIT_WORK(i32* %62, i32 %63)
  %65 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %7, align 8
  %66 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %65, i32 0, i32 0
  %67 = load i32, i32* @WLFW_SERVICE_ID_V01, align 4
  %68 = load i32, i32* @WLFW_SERVICE_VERS_V01, align 4
  %69 = call i32 @qmi_add_lookup(i32* %66, i32 %67, i32 %68, i32 0)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %54
  br label %74

73:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %87

74:                                               ; preds = %72
  %75 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %7, align 8
  %76 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @destroy_workqueue(i32 %77)
  br label %79

79:                                               ; preds = %74, %49
  %80 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %7, align 8
  %81 = getelementptr inbounds %struct.ath10k_qmi, %struct.ath10k_qmi* %80, i32 0, i32 0
  %82 = call i32 @qmi_handle_release(i32* %81)
  br label %83

83:                                               ; preds = %79, %39, %30
  %84 = load %struct.ath10k_qmi*, %struct.ath10k_qmi** %7, align 8
  %85 = call i32 @kfree(%struct.ath10k_qmi* %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %83, %73, %15
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k*) #1

declare dso_local %struct.ath10k_qmi* @kzalloc(i32, i32) #1

declare dso_local i32 @ath10k_qmi_setup_msa_resources(%struct.ath10k_qmi*, i32) #1

declare dso_local i32 @qmi_handle_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @qmi_add_lookup(i32*, i32, i32, i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @qmi_handle_release(i32*) #1

declare dso_local i32 @kfree(%struct.ath10k_qmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
