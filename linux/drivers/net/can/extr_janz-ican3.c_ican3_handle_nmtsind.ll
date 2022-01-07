; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_handle_nmtsind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_handle_nmtsind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ican3_dev = type { i32 }
%struct.ican3_msg = type { i32*, i32 }

@NMTS_SLAVE_EVENT_IND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"unknown NMTS event indication %x\0A\00", align 1
@NMTS_SLAVE_STATE_IND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"unhandled NMTS indication %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ican3_dev*, %struct.ican3_msg*)* @ican3_handle_nmtsind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ican3_handle_nmtsind(%struct.ican3_dev* %0, %struct.ican3_msg* %1) #0 {
  %3 = alloca %struct.ican3_dev*, align 8
  %4 = alloca %struct.ican3_msg*, align 8
  %5 = alloca i64, align 8
  store %struct.ican3_dev* %0, %struct.ican3_dev** %3, align 8
  store %struct.ican3_msg* %1, %struct.ican3_msg** %4, align 8
  %6 = load %struct.ican3_msg*, %struct.ican3_msg** %4, align 8
  %7 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ican3_msg*, %struct.ican3_msg** %4, align 8
  %12 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 256
  %17 = add nsw i32 %10, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @NMTS_SLAVE_EVENT_IND, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %60

22:                                               ; preds = %2
  %23 = load %struct.ican3_msg*, %struct.ican3_msg** %4, align 8
  %24 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %48 [
    i32 131, label %28
    i32 130, label %28
    i32 129, label %47
    i32 128, label %47
  ]

28:                                               ; preds = %22, %22
  %29 = load %struct.ican3_msg*, %struct.ican3_msg** %4, align 8
  %30 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %29, i32 0, i32 1
  %31 = call i32 @le16_add_cpu(i32* %30, i32 -3)
  %32 = load %struct.ican3_msg*, %struct.ican3_msg** %4, align 8
  %33 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.ican3_msg*, %struct.ican3_msg** %4, align 8
  %36 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 3
  %39 = load %struct.ican3_msg*, %struct.ican3_msg** %4, align 8
  %40 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @le16_to_cpu(i32 %41)
  %43 = call i32 @memmove(i32* %34, i32* %38, i32 %42)
  %44 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %45 = load %struct.ican3_msg*, %struct.ican3_msg** %4, align 8
  %46 = call i32 @ican3_handle_cevtind(%struct.ican3_dev* %44, %struct.ican3_msg* %45)
  br label %59

47:                                               ; preds = %22, %22
  br label %59

48:                                               ; preds = %22
  %49 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %50 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ican3_msg*, %struct.ican3_msg** %4, align 8
  %53 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = call i32 @netdev_warn(i32 %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %48, %47, %28
  br label %72

60:                                               ; preds = %2
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @NMTS_SLAVE_STATE_IND, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %71

65:                                               ; preds = %60
  %66 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %67 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @netdev_warn(i32 %68, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  br label %72

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %65, %71, %59
  ret void
}

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ican3_handle_cevtind(%struct.ican3_dev*, %struct.ican3_msg*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
