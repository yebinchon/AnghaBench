; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_main.c_scif_setup_scifdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_main.c_scif_setup_scifdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@scif_dev = common dso_local global %struct.scif_dev* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@OP_IDLE = common dso_local global i32 0, align 4
@scif_add_peer_device = common dso_local global i32 0, align 4
@scif_poll_qp_state = common dso_local global i32 0, align 4
@scif_qp_setup_handler = common dso_local global i32 0, align 4
@MAX_SCIF_NODES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @scif_setup_scifdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scif_setup_scifdev() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.scif_dev*, align 8
  store i32 129, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.scif_dev* @kcalloc(i32 %5, i32 36, i32 %6)
  store %struct.scif_dev* %7, %struct.scif_dev** @scif_dev, align 8
  %8 = load %struct.scif_dev*, %struct.scif_dev** @scif_dev, align 8
  %9 = icmp ne %struct.scif_dev* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %58

13:                                               ; preds = %0
  store i32 0, i32* %2, align 4
  br label %14

14:                                               ; preds = %54, %13
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %57

18:                                               ; preds = %14
  %19 = load %struct.scif_dev*, %struct.scif_dev** @scif_dev, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %19, i64 %21
  store %struct.scif_dev* %22, %struct.scif_dev** %4, align 8
  %23 = load i32, i32* %2, align 4
  %24 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %25 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @OP_IDLE, align 4
  %27 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %28 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 4
  %29 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %30 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %29, i32 0, i32 7
  %31 = call i32 @init_waitqueue_head(i32* %30)
  %32 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %33 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %32, i32 0, i32 6
  %34 = call i32 @mutex_init(i32* %33)
  %35 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %36 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %35, i32 0, i32 5
  %37 = load i32, i32* @scif_add_peer_device, align 4
  %38 = call i32 @INIT_WORK(i32* %36, i32 %37)
  %39 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %40 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %39, i32 0, i32 4
  %41 = load i32, i32* @scif_poll_qp_state, align 4
  %42 = call i32 @INIT_DELAYED_WORK(i32* %40, i32 %41)
  %43 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %44 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %43, i32 0, i32 3
  %45 = load i32, i32* @scif_qp_setup_handler, align 4
  %46 = call i32 @INIT_DELAYED_WORK(i32* %44, i32 %45)
  %47 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %48 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %47, i32 0, i32 2
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.scif_dev*, %struct.scif_dev** %4, align 8
  %51 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @RCU_INIT_POINTER(i32 %52, i32* null)
  br label %54

54:                                               ; preds = %18
  %55 = load i32, i32* %2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %2, align 4
  br label %14

57:                                               ; preds = %14
  store i32 0, i32* %1, align 4
  br label %58

58:                                               ; preds = %57, %10
  %59 = load i32, i32* %1, align 4
  ret i32 %59
}

declare dso_local %struct.scif_dev* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
