; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_link_status_check_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_link_status_check_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { i32, i32 }
%struct.ionic_deferred_work = type { i32 }

@IONIC_LIF_LINK_CHECK_REQUESTED = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IONIC_DW_TYPE_LINK_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ionic_lif*)* @ionic_link_status_check_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_link_status_check_request(%struct.ionic_lif* %0) #0 {
  %2 = alloca %struct.ionic_lif*, align 8
  %3 = alloca %struct.ionic_deferred_work*, align 8
  store %struct.ionic_lif* %0, %struct.ionic_lif** %2, align 8
  %4 = load i32, i32* @IONIC_LIF_LINK_CHECK_REQUESTED, align 4
  %5 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %6 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @test_and_set_bit(i32 %4, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %31

11:                                               ; preds = %1
  %12 = call i64 (...) @in_interrupt()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %11
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.ionic_deferred_work* @kzalloc(i32 4, i32 %15)
  store %struct.ionic_deferred_work* %16, %struct.ionic_deferred_work** %3, align 8
  %17 = load %struct.ionic_deferred_work*, %struct.ionic_deferred_work** %3, align 8
  %18 = icmp ne %struct.ionic_deferred_work* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %31

20:                                               ; preds = %14
  %21 = load i32, i32* @IONIC_DW_TYPE_LINK_STATUS, align 4
  %22 = load %struct.ionic_deferred_work*, %struct.ionic_deferred_work** %3, align 8
  %23 = getelementptr inbounds %struct.ionic_deferred_work, %struct.ionic_deferred_work* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %25 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %24, i32 0, i32 0
  %26 = load %struct.ionic_deferred_work*, %struct.ionic_deferred_work** %3, align 8
  %27 = call i32 @ionic_lif_deferred_enqueue(i32* %25, %struct.ionic_deferred_work* %26)
  br label %31

28:                                               ; preds = %11
  %29 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %30 = call i32 @ionic_link_status_check(%struct.ionic_lif* %29)
  br label %31

31:                                               ; preds = %10, %19, %28, %20
  ret void
}

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local %struct.ionic_deferred_work* @kzalloc(i32, i32) #1

declare dso_local i32 @ionic_lif_deferred_enqueue(i32*, %struct.ionic_deferred_work*) #1

declare dso_local i32 @ionic_link_status_check(%struct.ionic_lif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
