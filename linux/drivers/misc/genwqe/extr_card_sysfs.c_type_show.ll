; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_sysfs.c_type_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_sysfs.c_type_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.genwqe_dev = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@genwqe_types = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @type_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @type_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.genwqe_dev*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.genwqe_dev* @dev_get_drvdata(%struct.device* %9)
  store %struct.genwqe_dev* %10, %struct.genwqe_dev** %8, align 8
  %11 = load %struct.genwqe_dev*, %struct.genwqe_dev** %8, align 8
  %12 = call i64 @genwqe_card_type(%struct.genwqe_dev* %11)
  store i64 %12, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = load i8**, i8*** @genwqe_types, align 8
  %16 = call i64 @ARRAY_SIZE(i8** %15)
  %17 = icmp uge i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %24

19:                                               ; preds = %3
  %20 = load i8**, i8*** @genwqe_types, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds i8*, i8** %20, i64 %21
  %23 = load i8*, i8** %22, align 8
  br label %24

24:                                               ; preds = %19, %18
  %25 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %18 ], [ %23, %19 ]
  %26 = call i32 @sprintf(i8* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %25)
  ret i32 %26
}

declare dso_local %struct.genwqe_dev* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @genwqe_card_type(%struct.genwqe_dev*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
