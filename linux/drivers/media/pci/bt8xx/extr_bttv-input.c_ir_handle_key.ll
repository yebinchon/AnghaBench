; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-input.c_ir_handle_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-input.c_ir_handle_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { %struct.TYPE_2__, %struct.bttv_ir* }
%struct.TYPE_2__ = type { i64 }
%struct.bttv_ir = type { i32, i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [32 x i8] c"irq gpio=0x%x code=%d | %s%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"poll\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" down\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" up\00", align 1
@RC_PROTO_UNKNOWN = common dso_local global i32 0, align 4
@BTTV_BOARD_WINFAST2000 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @ir_handle_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ir_handle_key(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca %struct.bttv_ir*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %6 = load %struct.bttv*, %struct.bttv** %2, align 8
  %7 = getelementptr inbounds %struct.bttv, %struct.bttv* %6, i32 0, i32 1
  %8 = load %struct.bttv_ir*, %struct.bttv_ir** %7, align 8
  store %struct.bttv_ir* %8, %struct.bttv_ir** %3, align 8
  %9 = load %struct.bttv*, %struct.bttv** %2, align 8
  %10 = getelementptr inbounds %struct.bttv, %struct.bttv* %9, i32 0, i32 0
  %11 = call i32 @bttv_gpio_read(%struct.TYPE_2__* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %13 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %1
  %17 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %18 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  br label %107

23:                                               ; preds = %16
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %26 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %23, %1
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %30 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ir_extract_bits(i32 %28, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %36 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %43 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %51 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %57 = call i32 @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34, i8* %40, i8* %48, i8* %56)
  %58 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %59 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %27
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %65 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %62, %27
  %70 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %71 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %69
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %77 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %74, %62
  %82 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %83 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @rc_keydown_notimeout(i32 %84, i32 %85, i32 %86, i32 0)
  br label %107

88:                                               ; preds = %74, %69
  %89 = load %struct.bttv*, %struct.bttv** %2, align 8
  %90 = getelementptr inbounds %struct.bttv, %struct.bttv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @BTTV_BOARD_WINFAST2000, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %97 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @RC_PROTO_UNKNOWN, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @rc_keydown_notimeout(i32 %98, i32 %99, i32 %100, i32 0)
  br label %102

102:                                              ; preds = %95, %88
  %103 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %104 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @rc_keyup(i32 %105)
  br label %107

107:                                              ; preds = %22, %102, %81
  ret void
}

declare dso_local i32 @bttv_gpio_read(%struct.TYPE_2__*) #1

declare dso_local i32 @ir_extract_bits(i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @rc_keydown_notimeout(i32, i32, i32, i32) #1

declare dso_local i32 @rc_keyup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
