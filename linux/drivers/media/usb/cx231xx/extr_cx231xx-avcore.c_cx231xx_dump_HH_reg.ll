; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_dump_HH_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-avcore.c_cx231xx_dump_HH_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"reg0x%x=0x%x\0A\00", align 1
@AFE_CTRL_C2HH_SRC_CTRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"AFE_CTRL_C2HH_SRC_CTRL=0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx231xx_dump_HH_reg(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 1157649296, i32* %3, align 4
  %5 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @vid_blk_write_word(%struct.cx231xx* %5, i32 260, i32 %6)
  store i32 256, i32* %4, align 4
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 320
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @vid_blk_read_word(%struct.cx231xx* %12, i32 %13, i32* %3)
  %15 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %16 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 3
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %11
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %8

26:                                               ; preds = %8
  store i32 768, i32* %4, align 4
  br label %27

27:                                               ; preds = %42, %26
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 1024
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @vid_blk_read_word(%struct.cx231xx* %31, i32 %32, i32* %3)
  %34 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %35 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 3
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %27

45:                                               ; preds = %27
  store i32 1024, i32* %4, align 4
  br label %46

46:                                               ; preds = %61, %45
  %47 = load i32, i32* %4, align 4
  %48 = icmp slt i32 %47, 1088
  br i1 %48, label %49, label %64

49:                                               ; preds = %46
  %50 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @vid_blk_read_word(%struct.cx231xx* %50, i32 %51, i32* %3)
  %53 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %54 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %55, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 3
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %46

64:                                               ; preds = %46
  %65 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %66 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %67 = call i32 @vid_blk_read_word(%struct.cx231xx* %65, i32 %66, i32* %3)
  %68 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %69 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %70, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %74 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %75 = call i32 @vid_blk_write_word(%struct.cx231xx* %73, i32 %74, i32 1149621136)
  %76 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %77 = load i32, i32* @AFE_CTRL_C2HH_SRC_CTRL, align 4
  %78 = call i32 @vid_blk_read_word(%struct.cx231xx* %76, i32 %77, i32* %3)
  %79 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %80 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %3, align 4
  %83 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %81, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  ret void
}

declare dso_local i32 @vid_blk_write_word(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @vid_blk_read_word(%struct.cx231xx*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
