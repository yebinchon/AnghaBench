; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-rx51.c_ir_rx51_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-rx51.c_ir_rx51_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.ir_rx51* }
%struct.ir_rx51 = type { i32*, i32, i32, i32 }

@WBUF_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*, i32)* @ir_rx51_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_rx51_tx(%struct.rc_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ir_rx51*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %10 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %9, i32 0, i32 0
  %11 = load %struct.ir_rx51*, %struct.ir_rx51** %10, align 8
  store %struct.ir_rx51* %11, %struct.ir_rx51** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @WBUF_LEN, align 4
  %14 = icmp ugt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %75

18:                                               ; preds = %3
  %19 = load %struct.ir_rx51*, %struct.ir_rx51** %8, align 8
  %20 = getelementptr inbounds %struct.ir_rx51, %struct.ir_rx51* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call i32 @memcpy(i32* %21, i32* %22, i32 %26)
  %28 = load %struct.ir_rx51*, %struct.ir_rx51** %8, align 8
  %29 = getelementptr inbounds %struct.ir_rx51, %struct.ir_rx51* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ir_rx51*, %struct.ir_rx51** %8, align 8
  %32 = getelementptr inbounds %struct.ir_rx51, %struct.ir_rx51* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @wait_event_interruptible(i32 %30, i32 %35)
  %37 = load %struct.ir_rx51*, %struct.ir_rx51** %8, align 8
  %38 = call i32 @init_timing_params(%struct.ir_rx51* %37)
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @WBUF_LEN, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %18
  %43 = load %struct.ir_rx51*, %struct.ir_rx51** %8, align 8
  %44 = getelementptr inbounds %struct.ir_rx51, %struct.ir_rx51* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 -1, i32* %48, align 4
  br label %49

49:                                               ; preds = %42, %18
  %50 = load %struct.ir_rx51*, %struct.ir_rx51** %8, align 8
  %51 = call i32 @ir_rx51_on(%struct.ir_rx51* %50)
  %52 = load %struct.ir_rx51*, %struct.ir_rx51** %8, align 8
  %53 = getelementptr inbounds %struct.ir_rx51, %struct.ir_rx51* %52, i32 0, i32 1
  store i32 1, i32* %53, align 8
  %54 = load %struct.ir_rx51*, %struct.ir_rx51** %8, align 8
  %55 = getelementptr inbounds %struct.ir_rx51, %struct.ir_rx51* %54, i32 0, i32 3
  %56 = load %struct.ir_rx51*, %struct.ir_rx51** %8, align 8
  %57 = getelementptr inbounds %struct.ir_rx51, %struct.ir_rx51* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @US_TO_NS(i32 %60)
  %62 = call i32 @ns_to_ktime(i32 %61)
  %63 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %64 = call i32 @hrtimer_start(i32* %55, i32 %62, i32 %63)
  %65 = load %struct.ir_rx51*, %struct.ir_rx51** %8, align 8
  %66 = getelementptr inbounds %struct.ir_rx51, %struct.ir_rx51* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ir_rx51*, %struct.ir_rx51** %8, align 8
  %69 = getelementptr inbounds %struct.ir_rx51, %struct.ir_rx51* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %70, 0
  %72 = zext i1 %71 to i32
  %73 = call i32 @wait_event_interruptible(i32 %67, i32 %72)
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %49, %15
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @init_timing_params(%struct.ir_rx51*) #1

declare dso_local i32 @ir_rx51_on(%struct.ir_rx51*) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @US_TO_NS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
