; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_set_buserror.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_set_buserror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ican3_dev = type { i64 }
%struct.ican3_msg = type { i32*, i8*, i32 }

@ICAN3_FWTYPE_ICANOS = common dso_local global i64 0, align 8
@MSG_CCONFREQ = common dso_local global i32 0, align 4
@ICAN3_FWTYPE_CAL_CANOPEN = common dso_local global i64 0, align 8
@MSG_LMTS = common dso_local global i32 0, align 4
@LMTS_CAN_CONF_REQ = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ican3_dev*, i8*)* @ican3_set_buserror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ican3_set_buserror(%struct.ican3_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ican3_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ican3_msg, align 8
  store %struct.ican3_dev* %0, %struct.ican3_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %8 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ICAN3_FWTYPE_ICANOS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = call i32 @memset(%struct.ican3_msg* %6, i32 0, i32 24)
  %14 = load i32, i32* @MSG_CCONFREQ, align 4
  %15 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 2
  store i32 %14, i32* %15, align 8
  %16 = call i8* @cpu_to_le16(i32 2)
  %17 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 0, i32* %20, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = ptrtoint i8* %21 to i32
  %23 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %22, i32* %25, align 4
  br label %57

26:                                               ; preds = %2
  %27 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %28 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ICAN3_FWTYPE_CAL_CANOPEN, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %53

32:                                               ; preds = %26
  %33 = call i32 @memset(%struct.ican3_msg* %6, i32 0, i32 24)
  %34 = load i32, i32* @MSG_LMTS, align 4
  %35 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = call i8* @cpu_to_le16(i32 4)
  %37 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* @LMTS_CAN_CONF_REQ, align 4
  %39 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %38, i32* %41, align 4
  %42 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  store i32 0, i32* %44, align 4
  %45 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 0, i32* %47, align 4
  %48 = load i8*, i8** %5, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = getelementptr inbounds %struct.ican3_msg, %struct.ican3_msg* %6, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  store i32 %49, i32* %52, align 4
  br label %56

53:                                               ; preds = %26
  %54 = load i32, i32* @ENOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %60

56:                                               ; preds = %32
  br label %57

57:                                               ; preds = %56, %12
  %58 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %59 = call i32 @ican3_send_msg(%struct.ican3_dev* %58, %struct.ican3_msg* %6)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32, i32* %3, align 4
  ret i32 %61
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
