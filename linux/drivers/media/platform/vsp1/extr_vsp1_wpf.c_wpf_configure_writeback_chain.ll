; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_wpf.c_wpf_configure_writeback_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_wpf.c_wpf_configure_writeback_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_rwpf = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.vsp1_dl_list = type { i32 }
%struct.vsp1_dl_body = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"Failed to obtain a dl list, disabling writeback\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsp1_rwpf*, %struct.vsp1_dl_list*)* @wpf_configure_writeback_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpf_configure_writeback_chain(%struct.vsp1_rwpf* %0, %struct.vsp1_dl_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vsp1_rwpf*, align 8
  %5 = alloca %struct.vsp1_dl_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vsp1_dl_list*, align 8
  %8 = alloca %struct.vsp1_dl_body*, align 8
  store %struct.vsp1_rwpf* %0, %struct.vsp1_rwpf** %4, align 8
  store %struct.vsp1_dl_list* %1, %struct.vsp1_dl_list** %5, align 8
  %9 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %4, align 8
  %10 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %4, align 8
  %14 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.vsp1_dl_list* @vsp1_dl_list_get(i32 %15)
  store %struct.vsp1_dl_list* %16, %struct.vsp1_dl_list** %7, align 8
  %17 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %7, align 8
  %18 = icmp ne %struct.vsp1_dl_list* %17, null
  br i1 %18, label %29, label %19

19:                                               ; preds = %2
  %20 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %4, align 8
  %21 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %39

29:                                               ; preds = %2
  %30 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %7, align 8
  %31 = call %struct.vsp1_dl_body* @vsp1_dl_list_get_body0(%struct.vsp1_dl_list* %30)
  store %struct.vsp1_dl_body* %31, %struct.vsp1_dl_body** %8, align 8
  %32 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @VI6_WPF_WRBCK_CTRL(i32 %33)
  %35 = call i32 @vsp1_dl_body_write(%struct.vsp1_dl_body* %32, i32 %34, i32 0)
  %36 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %5, align 8
  %37 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %7, align 8
  %38 = call i32 @vsp1_dl_list_add_chain(%struct.vsp1_dl_list* %36, %struct.vsp1_dl_list* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %29, %19
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.vsp1_dl_list* @vsp1_dl_list_get(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.vsp1_dl_body* @vsp1_dl_list_get_body0(%struct.vsp1_dl_list*) #1

declare dso_local i32 @vsp1_dl_body_write(%struct.vsp1_dl_body*, i32, i32) #1

declare dso_local i32 @VI6_WPF_WRBCK_CTRL(i32) #1

declare dso_local i32 @vsp1_dl_list_add_chain(%struct.vsp1_dl_list*, %struct.vsp1_dl_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
