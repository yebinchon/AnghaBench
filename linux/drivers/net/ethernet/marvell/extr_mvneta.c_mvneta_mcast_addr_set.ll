; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_mcast_addr_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mvneta.c_mvneta_mcast_addr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvneta_port = type { i32*, i32 }

@.str = private unnamed_addr constant [6 x i8] c"\01\00^\00\00\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"No valid Mcast for crc8=0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"After delete there are %d valid Mcast for crc8=0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvneta_port*, i8*, i32)* @mvneta_mcast_addr_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvneta_mcast_addr_set(%struct.mvneta_port* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvneta_port*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.mvneta_port* %0, %struct.mvneta_port** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8 0, i8* %8, align 1
  %9 = load i8*, i8** %6, align 8
  %10 = call i64 @memcmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 5
  %16 = load i8, i8* %15, align 1
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @mvneta_set_special_mcast_addr(%struct.mvneta_port* %13, i8 zeroext %16, i32 %17)
  store i32 0, i32* %4, align 4
  br label %90

19:                                               ; preds = %3
  %20 = load i8*, i8** %6, align 8
  %21 = call zeroext i8 @mvneta_addr_crc(i8* %20)
  store i8 %21, i8* %8, align 1
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %76

24:                                               ; preds = %19
  %25 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %26 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i8, i8* %8, align 1
  %29 = zext i8 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %35 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i8, i8* %8, align 1
  %38 = call i32 (i32, i8*, i8, ...) @netdev_info(i32 %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %90

41:                                               ; preds = %24
  %42 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %43 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i8, i8* %8, align 1
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %51 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i8, i8* %8, align 1
  %54 = zext i8 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %41
  %59 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %60 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %63 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i8, i8* %8, align 1
  %66 = zext i8 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = trunc i32 %68 to i8
  %70 = load i8, i8* %8, align 1
  %71 = zext i8 %70 to i32
  %72 = call i32 (i32, i8*, i8, ...) @netdev_info(i32 %61, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %69, i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %90

75:                                               ; preds = %41
  br label %85

76:                                               ; preds = %19
  %77 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %78 = getelementptr inbounds %struct.mvneta_port, %struct.mvneta_port* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i8, i8* %8, align 1
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %76, %75
  %86 = load %struct.mvneta_port*, %struct.mvneta_port** %5, align 8
  %87 = load i8, i8* %8, align 1
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @mvneta_set_other_mcast_addr(%struct.mvneta_port* %86, i8 zeroext %87, i32 %88)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %85, %58, %33, %12
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @mvneta_set_special_mcast_addr(%struct.mvneta_port*, i8 zeroext, i32) #1

declare dso_local zeroext i8 @mvneta_addr_crc(i8*) #1

declare dso_local i32 @netdev_info(i32, i8*, i8 zeroext, ...) #1

declare dso_local i32 @mvneta_set_other_mcast_addr(%struct.mvneta_port*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
