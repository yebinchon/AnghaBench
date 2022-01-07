; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-rc.c_fdtv_handle_rc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-rc.c_fdtv_handle_rc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firedtv = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32* }

@oldtable = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [45 x i8] c"invalid key code 0x%04x from remote control\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fdtv_handle_rc(%struct.firedtv* %0, i32 %1) #0 {
  %3 = alloca %struct.firedtv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32*, align 8
  store %struct.firedtv* %0, %struct.firedtv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %8 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %7, i32 0, i32 1
  %9 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %9, %struct.input_dev** %5, align 8
  %10 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %11 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp uge i32 %13, 768
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp ule i32 %16, 799
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sub i32 %20, 768
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  br label %73

25:                                               ; preds = %15, %2
  %26 = load i32, i32* %4, align 4
  %27 = icmp uge i32 %26, 832
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = icmp ule i32 %29, 852
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sub i32 %33, 800
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  br label %72

38:                                               ; preds = %28, %25
  %39 = load i32, i32* %4, align 4
  %40 = icmp uge i32 %39, 17665
  br i1 %40, label %41, label %51

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = icmp ule i32 %42, 17695
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load i32*, i32** @oldtable, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sub i32 %46, 17665
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %4, align 4
  br label %71

51:                                               ; preds = %41, %38
  %52 = load i32, i32* %4, align 4
  %53 = icmp uge i32 %52, 17728
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = icmp ule i32 %55, 17730
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load i32*, i32** @oldtable, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sub i32 %59, 17697
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %4, align 4
  br label %70

64:                                               ; preds = %54, %51
  %65 = load %struct.firedtv*, %struct.firedtv** %3, align 8
  %66 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %84

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %44
  br label %72

72:                                               ; preds = %71, %31
  br label %73

73:                                               ; preds = %72, %18
  %74 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @input_report_key(%struct.input_dev* %74, i32 %75, i32 1)
  %77 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %78 = call i32 @input_sync(%struct.input_dev* %77)
  %79 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @input_report_key(%struct.input_dev* %79, i32 %80, i32 0)
  %82 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %83 = call i32 @input_sync(%struct.input_dev* %82)
  br label %84

84:                                               ; preds = %73, %64
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
