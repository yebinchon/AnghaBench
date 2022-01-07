; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp = type { i32, i32, i32, i32, %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sfp_poll = common dso_local global i32 0, align 4
@sfp_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sfp* (%struct.device*)* @sfp_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sfp* @sfp_alloc(%struct.device* %0) #0 {
  %2 = alloca %struct.sfp*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sfp*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.sfp* @kzalloc(i32 24, i32 %5)
  store %struct.sfp* %6, %struct.sfp** %4, align 8
  %7 = load %struct.sfp*, %struct.sfp** %4, align 8
  %8 = icmp ne %struct.sfp* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.sfp* @ERR_PTR(i32 %11)
  store %struct.sfp* %12, %struct.sfp** %2, align 8
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = load %struct.sfp*, %struct.sfp** %4, align 8
  %16 = getelementptr inbounds %struct.sfp, %struct.sfp* %15, i32 0, i32 4
  store %struct.device* %14, %struct.device** %16, align 8
  %17 = load %struct.sfp*, %struct.sfp** %4, align 8
  %18 = getelementptr inbounds %struct.sfp, %struct.sfp* %17, i32 0, i32 3
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.sfp*, %struct.sfp** %4, align 8
  %21 = getelementptr inbounds %struct.sfp, %struct.sfp* %20, i32 0, i32 2
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.sfp*, %struct.sfp** %4, align 8
  %24 = getelementptr inbounds %struct.sfp, %struct.sfp* %23, i32 0, i32 1
  %25 = load i32, i32* @sfp_poll, align 4
  %26 = call i32 @INIT_DELAYED_WORK(i32* %24, i32 %25)
  %27 = load %struct.sfp*, %struct.sfp** %4, align 8
  %28 = getelementptr inbounds %struct.sfp, %struct.sfp* %27, i32 0, i32 0
  %29 = load i32, i32* @sfp_timeout, align 4
  %30 = call i32 @INIT_DELAYED_WORK(i32* %28, i32 %29)
  %31 = load %struct.sfp*, %struct.sfp** %4, align 8
  store %struct.sfp* %31, %struct.sfp** %2, align 8
  br label %32

32:                                               ; preds = %13, %9
  %33 = load %struct.sfp*, %struct.sfp** %2, align 8
  ret %struct.sfp* %33
}

declare dso_local %struct.sfp* @kzalloc(i32, i32) #1

declare dso_local %struct.sfp* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
