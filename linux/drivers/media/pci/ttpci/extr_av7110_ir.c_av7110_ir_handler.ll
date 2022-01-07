; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_ir.c_av7110_ir_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_ir.c_av7110_ir_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.rc_dev* }
%struct.rc_dev = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ir command = %08x\0A\00", align 1
@RC_PROTO_RC5 = common dso_local global i32 0, align 4
@RC_PROTO_RCMM32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unknown ir config %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av7110_ir_handler(%struct.av7110* %0, i32 %1) #0 {
  %3 = alloca %struct.av7110*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.av7110* %0, %struct.av7110** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.av7110*, %struct.av7110** %3, align 8
  %12 = getelementptr inbounds %struct.av7110, %struct.av7110* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.rc_dev*, %struct.rc_dev** %13, align 8
  store %struct.rc_dev* %14, %struct.rc_dev** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @dprintk(i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %18 = icmp ne %struct.rc_dev* %17, null
  br i1 %18, label %19, label %75

19:                                               ; preds = %2
  %20 = load %struct.av7110*, %struct.av7110** %3, align 8
  %21 = getelementptr inbounds %struct.av7110, %struct.av7110* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %61 [
    i32 130, label %24
    i32 128, label %36
    i32 129, label %42
  ]

24:                                               ; preds = %19
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, 63
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 6
  %29 = and i32 %28, 31
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @RC_SCANCODE_RC5(i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, 2048
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* @RC_PROTO_RC5, align 4
  store i32 %35, i32* %6, align 4
  br label %67

36:                                               ; preds = %19
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, -32769
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %4, align 4
  %40 = and i32 %39, 32768
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @RC_PROTO_RCMM32, align 4
  store i32 %41, i32* %6, align 4
  br label %67

42:                                               ; preds = %19
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 63
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %4, align 4
  %46 = ashr i32 %45, 6
  %47 = and i32 %46, 31
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 4096
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, 64
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %51, %42
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @RC_SCANCODE_RC5(i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %4, align 4
  %59 = and i32 %58, 2048
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* @RC_PROTO_RC5, align 4
  store i32 %60, i32* %6, align 4
  br label %67

61:                                               ; preds = %19
  %62 = load %struct.av7110*, %struct.av7110** %3, align 8
  %63 = getelementptr inbounds %struct.av7110, %struct.av7110* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %75

67:                                               ; preds = %54, %36, %24
  %68 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i32
  %74 = call i32 @rc_keydown(%struct.rc_dev* %68, i32 %69, i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %61, %67, %2
  ret void
}

declare dso_local i32 @dprintk(i32, i8*, i32) #1

declare dso_local i32 @RC_SCANCODE_RC5(i32, i32) #1

declare dso_local i32 @rc_keydown(%struct.rc_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
