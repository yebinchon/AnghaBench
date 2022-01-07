; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_old_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_old_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ican3_dev = type { i64, i32 }
%struct.ican3_msg = type { i32 }

@QUEUE_OLD_CONTROL = common dso_local global i32 0, align 4
@MSYNC_PEER = common dso_local global i64 0, align 8
@MSYNC_LOCL = common dso_local global i64 0, align 8
@MSYNC_WB_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"no mbox for writing\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MSYNC_WB0 = common dso_local global i32 0, align 4
@MSYNC_WB1 = common dso_local global i32 0, align 4
@QUEUE_OLD_WB0 = common dso_local global i32 0, align 4
@QUEUE_OLD_WB1 = common dso_local global i32 0, align 4
@MSYNC_WBLW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ican3_dev*, %struct.ican3_msg*)* @ican3_old_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ican3_old_send_msg(%struct.ican3_dev* %0, %struct.ican3_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ican3_dev*, align 8
  %5 = alloca %struct.ican3_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ican3_dev* %0, %struct.ican3_dev** %4, align 8
  store %struct.ican3_msg* %1, %struct.ican3_msg** %5, align 8
  %11 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %12 = load i32, i32* @QUEUE_OLD_CONTROL, align 4
  %13 = call i32 @ican3_set_page(%struct.ican3_dev* %11, i32 %12)
  %14 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %15 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MSYNC_PEER, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @ioread8(i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %21 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MSYNC_LOCL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @ioread8(i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = xor i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @MSYNC_WB_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @MSYNC_WB_MASK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %36 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @netdev_err(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %90

41:                                               ; preds = %2
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @MSYNC_WB0, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @MSYNC_WB1, align 4
  br label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @MSYNC_WB0, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi i32 [ %47, %46 ], [ %49, %48 ]
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @MSYNC_WB0, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @QUEUE_OLD_WB0, align 4
  br label %59

57:                                               ; preds = %50
  %58 = load i32, i32* @QUEUE_OLD_WB1, align 4
  br label %59

59:                                               ; preds = %57, %55
  %60 = phi i32 [ %56, %55 ], [ %58, %57 ]
  store i32 %60, i32* %7, align 4
  %61 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ican3_set_page(%struct.ican3_dev* %61, i32 %62)
  %64 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %65 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ican3_msg*, %struct.ican3_msg** %5, align 8
  %68 = call i32 @memcpy_toio(i64 %66, %struct.ican3_msg* %67, i32 4)
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %8, align 4
  %71 = xor i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @MSYNC_WB1, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %59
  %76 = load i32, i32* @MSYNC_WBLW, align 4
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %75, %59
  %80 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %81 = load i32, i32* @QUEUE_OLD_CONTROL, align 4
  %82 = call i32 @ican3_set_page(%struct.ican3_dev* %80, i32 %81)
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %85 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @MSYNC_LOCL, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @iowrite8(i32 %83, i64 %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %79, %34
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @ican3_set_page(%struct.ican3_dev*, i32) #1

declare dso_local i32 @ioread8(i64) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @memcpy_toio(i64, %struct.ican3_msg*, i32) #1

declare dso_local i32 @iowrite8(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
