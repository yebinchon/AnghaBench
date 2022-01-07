; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_cobalt_hdl_info_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_cobalt_hdl_info_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt = type { i8*, i64 }

@COBALT_HDL_INFO_SIZE = common dso_local global i32 0, align 4
@COBALT_HDL_INFO_BASE = common dso_local global i64 0, align 8
@COBALT_HDL_SEARCH_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cobalt*)* @cobalt_hdl_info_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_hdl_info_get(%struct.cobalt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cobalt*, align 8
  %4 = alloca i32, align 4
  store %struct.cobalt* %0, %struct.cobalt** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %25, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @COBALT_HDL_INFO_SIZE, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %5
  %10 = load %struct.cobalt*, %struct.cobalt** %3, align 8
  %11 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @COBALT_HDL_INFO_BASE, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = call signext i8 @ioread8(i64 %17)
  %19 = load %struct.cobalt*, %struct.cobalt** %3, align 8
  %20 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8 %18, i8* %24, align 1
  br label %25

25:                                               ; preds = %9
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %5

28:                                               ; preds = %5
  %29 = load %struct.cobalt*, %struct.cobalt** %3, align 8
  %30 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* @COBALT_HDL_INFO_SIZE, align 4
  %33 = sub nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  store i8 0, i8* %35, align 1
  %36 = load %struct.cobalt*, %struct.cobalt** %3, align 8
  %37 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* @COBALT_HDL_SEARCH_STR, align 4
  %40 = call i64 @strstr(i8* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %44

43:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local signext i8 @ioread8(i64) #1

declare dso_local i64 @strstr(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
