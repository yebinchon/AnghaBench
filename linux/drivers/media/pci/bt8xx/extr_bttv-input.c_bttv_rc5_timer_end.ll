; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-input.c_bttv_rc5_timer_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-input.c_bttv_rc5_timer_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv_ir = type { i32, i32, i32, i32, i32, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"spurious timer_end\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"short code: %x\0A\00", align 1
@RC_PROTO_RC5 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"scancode %x, toggle %x\0A\00", align 1
@ir = common dso_local global %struct.bttv_ir* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @bttv_rc5_timer_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bttv_rc5_timer_end(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.bttv_ir*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %11 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %12 = ptrtoint %struct.bttv_ir* %11 to i32
  %13 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %14 = load i32, i32* @timer, align 4
  %15 = call %struct.bttv_ir* @from_timer(i32 %12, %struct.timer_list* %13, i32 %14)
  store %struct.bttv_ir* %15, %struct.bttv_ir** %3, align 8
  %16 = call i32 (...) @ktime_get()
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %19 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ktime_sub(i32 %17, i32 %20)
  %22 = call i32 @ktime_to_us(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @USEC_PER_SEC, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 200000, i32* %5, align 4
  br label %27

27:                                               ; preds = %26, %1
  %28 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %29 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 28000
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %86

34:                                               ; preds = %27
  %35 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %36 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 20
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %41 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %86

44:                                               ; preds = %34
  %45 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %46 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %49 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %47, %50
  %52 = or i32 %51, 1
  %53 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %54 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %56 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bttv_rc5_decode(i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @RC5_TOGGLE(i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @RC5_ADDR(i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @RC5_INSTR(i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @RC5_START(i32 %65)
  switch i32 %66, label %71 [
    i32 3, label %67
    i32 2, label %68
  ]

67:                                               ; preds = %44
  br label %72

68:                                               ; preds = %44
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 64
  store i32 %70, i32* %9, align 4
  br label %72

71:                                               ; preds = %44
  br label %86

72:                                               ; preds = %68, %67
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @RC_SCANCODE_RC5(i32 %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %77 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @RC_PROTO_RC5, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @rc_keydown(i32 %78, i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %72, %71, %39, %32
  ret void
}

declare dso_local %struct.bttv_ir* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @bttv_rc5_decode(i32) #1

declare dso_local i32 @RC5_TOGGLE(i32) #1

declare dso_local i32 @RC5_ADDR(i32) #1

declare dso_local i32 @RC5_INSTR(i32) #1

declare dso_local i32 @RC5_START(i32) #1

declare dso_local i32 @RC_SCANCODE_RC5(i32, i32) #1

declare dso_local i32 @rc_keydown(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
