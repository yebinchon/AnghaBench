; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32 }
%struct.if_sdio_card = type { i64, %struct.if_sdio_card*, %struct.if_sdio_card*, i32, i32 }
%struct.if_sdio_packet = type { i64, %struct.if_sdio_packet*, %struct.if_sdio_packet*, i32, i32 }
%struct.cmd_header = type { i32 }

@user_rmmod = common dso_local global i64 0, align 8
@MODEL_8688 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"send function SHUTDOWN command\0A\00", align 1
@CMD_FUNC_SHUTDOWN = common dso_local global i32 0, align 4
@lbs_cmd_copyback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"CMD_FUNC_SHUTDOWN cmd failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"call remove card\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdio_func*)* @if_sdio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_sdio_remove(%struct.sdio_func* %0) #0 {
  %2 = alloca %struct.sdio_func*, align 8
  %3 = alloca %struct.if_sdio_card*, align 8
  %4 = alloca %struct.if_sdio_packet*, align 8
  %5 = alloca %struct.cmd_header, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %2, align 8
  %6 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %7 = call %struct.if_sdio_packet* @sdio_get_drvdata(%struct.sdio_func* %6)
  %8 = bitcast %struct.if_sdio_packet* %7 to %struct.if_sdio_card*
  store %struct.if_sdio_card* %8, %struct.if_sdio_card** %3, align 8
  %9 = load %struct.sdio_func*, %struct.sdio_func** %2, align 8
  %10 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %9, i32 0, i32 0
  %11 = call i32 @pm_runtime_get_noresume(i32* %10)
  %12 = load i64, i64* @user_rmmod, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %16 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MODEL_8688, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = call i32 @memset(%struct.cmd_header* %5, i32 0, i32 4)
  %22 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %24 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @CMD_FUNC_SHUTDOWN, align 4
  %27 = load i32, i32* @lbs_cmd_copyback, align 4
  %28 = ptrtoint %struct.cmd_header* %5 to i64
  %29 = call i64 @__lbs_cmd(i32 %25, i32 %26, %struct.cmd_header* %5, i32 4, i32 %27, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = call i32 @pr_alert(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %20
  br label %34

34:                                               ; preds = %33, %14, %1
  %35 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %37 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @lbs_stop_card(i32 %38)
  %40 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %41 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @lbs_remove_card(i32 %42)
  %44 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %45 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @destroy_workqueue(i32 %46)
  br label %48

48:                                               ; preds = %53, %34
  %49 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %50 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %49, i32 0, i32 2
  %51 = load %struct.if_sdio_card*, %struct.if_sdio_card** %50, align 8
  %52 = icmp ne %struct.if_sdio_card* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %55 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %54, i32 0, i32 2
  %56 = load %struct.if_sdio_card*, %struct.if_sdio_card** %55, align 8
  %57 = bitcast %struct.if_sdio_card* %56 to %struct.if_sdio_packet*
  store %struct.if_sdio_packet* %57, %struct.if_sdio_packet** %4, align 8
  %58 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %59 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %58, i32 0, i32 2
  %60 = load %struct.if_sdio_card*, %struct.if_sdio_card** %59, align 8
  %61 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %60, i32 0, i32 1
  %62 = load %struct.if_sdio_card*, %struct.if_sdio_card** %61, align 8
  %63 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %64 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %63, i32 0, i32 2
  store %struct.if_sdio_card* %62, %struct.if_sdio_card** %64, align 8
  %65 = load %struct.if_sdio_packet*, %struct.if_sdio_packet** %4, align 8
  %66 = call i32 @kfree(%struct.if_sdio_packet* %65)
  br label %48

67:                                               ; preds = %48
  %68 = load %struct.if_sdio_card*, %struct.if_sdio_card** %3, align 8
  %69 = bitcast %struct.if_sdio_card* %68 to %struct.if_sdio_packet*
  %70 = call i32 @kfree(%struct.if_sdio_packet* %69)
  ret void
}

declare dso_local %struct.if_sdio_packet* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @pm_runtime_get_noresume(i32*) #1

declare dso_local i32 @memset(%struct.cmd_header*, i32, i32) #1

declare dso_local i32 @lbs_deb_sdio(i8*) #1

declare dso_local i64 @__lbs_cmd(i32, i32, %struct.cmd_header*, i32, i32, i64) #1

declare dso_local i32 @pr_alert(i8*) #1

declare dso_local i32 @lbs_stop_card(i32) #1

declare dso_local i32 @lbs_remove_card(i32) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @kfree(%struct.if_sdio_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
