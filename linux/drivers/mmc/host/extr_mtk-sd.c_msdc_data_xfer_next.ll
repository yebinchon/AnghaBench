; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_data_xfer_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_data_xfer_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mmc_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msdc_host*, %struct.mmc_request*, %struct.mmc_data*)* @msdc_data_xfer_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msdc_data_xfer_next(%struct.msdc_host* %0, %struct.mmc_request* %1, %struct.mmc_data* %2) #0 {
  %4 = alloca %struct.msdc_host*, align 8
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca %struct.mmc_data*, align 8
  store %struct.msdc_host* %0, %struct.msdc_host** %4, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %5, align 8
  store %struct.mmc_data* %2, %struct.mmc_data** %6, align 8
  %7 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %8 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @mmc_op_multi(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %38

14:                                               ; preds = %3
  %15 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %16 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %38

19:                                               ; preds = %14
  %20 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %21 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %38, label %26

26:                                               ; preds = %19
  %27 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %28 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %26
  %32 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %33 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %34 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %35 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call i32 @msdc_start_command(%struct.msdc_host* %32, %struct.mmc_request* %33, %struct.TYPE_4__* %36)
  br label %42

38:                                               ; preds = %26, %19, %14, %3
  %39 = load %struct.msdc_host*, %struct.msdc_host** %4, align 8
  %40 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %41 = call i32 @msdc_request_done(%struct.msdc_host* %39, %struct.mmc_request* %40)
  br label %42

42:                                               ; preds = %38, %31
  ret void
}

declare dso_local i64 @mmc_op_multi(i32) #1

declare dso_local i32 @msdc_start_command(%struct.msdc_host*, %struct.mmc_request*, %struct.TYPE_4__*) #1

declare dso_local i32 @msdc_request_done(%struct.msdc_host*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
