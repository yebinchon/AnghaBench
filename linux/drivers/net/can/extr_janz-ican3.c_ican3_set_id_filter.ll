; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_set_id_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_set_id_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ican3_dev = type { i32 }
%struct.ican3_msg = type { i32*, i8*, i8* }

@MSG_SETAFILMASK = common dso_local global i8* null, align 8
@SETAFILMASK_FASTIF = common dso_local global i8* null, align 8
@SETAFILMASK_REJECT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ican3_dev*, i32)* @ican3_set_id_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ican3_set_id_filter(%struct.ican3_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ican3_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ican3_msg, align 8
  %7 = alloca i32, align 4
  store %struct.ican3_dev* %0, %struct.ican3_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @memset(%struct.ican3_msg* %6, i32 0, i32 24)
  %9 = load i8*, i8** @MSG_SETAFILMASK, align 8
  %10 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 2
  store i8* %9, i8** %10, align 8
  %11 = call i8* @cpu_to_le16(i32 5)
  %12 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 1
  store i8* %11, i8** %12, align 8
  %13 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 255, i32* %21, align 4
  %22 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 3
  store i32 7, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i8*, i8** @SETAFILMASK_FASTIF, align 8
  br label %31

29:                                               ; preds = %2
  %30 = load i8*, i8** @SETAFILMASK_REJECT, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i8* [ %28, %27 ], [ %30, %29 ]
  %33 = ptrtoint i8* %32 to i32
  %34 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  store i32 %33, i32* %36, align 4
  %37 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %38 = call i32 @ican3_send_msg(%struct.ican3_dev* %37, %struct.ican3_msg* %6)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %90

43:                                               ; preds = %31
  %44 = call i32 @memset(%struct.ican3_msg* %6, i32 0, i32 24)
  %45 = load i8*, i8** @MSG_SETAFILMASK, align 8
  %46 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 2
  store i8* %45, i8** %46, align 8
  %47 = call i8* @cpu_to_le16(i32 13)
  %48 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 1
  store i8* %47, i8** %48, align 8
  %49 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 0, i32* %51, align 4
  %52 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 0, i32* %54, align 4
  %55 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  store i32 0, i32* %57, align 4
  %58 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  store i32 0, i32* %60, align 4
  %61 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  store i32 32, i32* %63, align 4
  %64 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 5
  store i32 255, i32* %66, align 4
  %67 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 6
  store i32 255, i32* %69, align 4
  %70 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 7
  store i32 255, i32* %72, align 4
  %73 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 8
  store i32 63, i32* %75, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %43
  %79 = load i8*, i8** @SETAFILMASK_FASTIF, align 8
  br label %82

80:                                               ; preds = %43
  %81 = load i8*, i8** @SETAFILMASK_REJECT, align 8
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i8* [ %79, %78 ], [ %81, %80 ]
  %84 = ptrtoint i8* %83 to i32
  %85 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 9
  store i32 %84, i32* %87, align 4
  %88 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %89 = call i32 @ican3_send_msg(%struct.ican3_dev* %88, %struct.ican3_msg* %6)
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %82, %41
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @memset(%struct.ican3_msg*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @ican3_send_msg(%struct.ican3_dev*, %struct.ican3_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
