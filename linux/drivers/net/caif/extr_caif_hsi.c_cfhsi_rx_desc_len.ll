; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_hsi.c_cfhsi_rx_desc_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_hsi.c_cfhsi_rx_desc_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfhsi_desc = type { i32, i64, i64* }

@CFHSI_PIGGY_DESC = common dso_local global i32 0, align 4
@CFHSI_MAX_EMB_FRM_SZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Invalid descriptor. %x %x\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@CFHSI_MAX_PKTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Invalid payload len: %d, ignored.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfhsi_desc*)* @cfhsi_rx_desc_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfhsi_rx_desc_len(%struct.cfhsi_desc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cfhsi_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  store %struct.cfhsi_desc* %0, %struct.cfhsi_desc** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.cfhsi_desc*, %struct.cfhsi_desc** %3, align 8
  %8 = getelementptr inbounds %struct.cfhsi_desc, %struct.cfhsi_desc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CFHSI_PIGGY_DESC, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.cfhsi_desc*, %struct.cfhsi_desc** %3, align 8
  %16 = getelementptr inbounds %struct.cfhsi_desc, %struct.cfhsi_desc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CFHSI_MAX_EMB_FRM_SZ, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %14, %1
  %21 = load %struct.cfhsi_desc*, %struct.cfhsi_desc** %3, align 8
  %22 = getelementptr inbounds %struct.cfhsi_desc, %struct.cfhsi_desc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.cfhsi_desc*, %struct.cfhsi_desc** %3, align 8
  %25 = getelementptr inbounds %struct.cfhsi_desc, %struct.cfhsi_desc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23, i64 %26)
  %28 = load i32, i32* @EPROTO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %66

30:                                               ; preds = %14
  %31 = load %struct.cfhsi_desc*, %struct.cfhsi_desc** %3, align 8
  %32 = getelementptr inbounds %struct.cfhsi_desc, %struct.cfhsi_desc* %31, i32 0, i32 2
  %33 = load i64*, i64** %32, align 8
  store i64* %33, i64** %6, align 8
  br label %34

34:                                               ; preds = %44, %30
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @CFHSI_MAX_PKTS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i64*, i64** %6, align 8
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i1 [ false, %34 ], [ %41, %38 ]
  br i1 %43, label %44, label %55

44:                                               ; preds = %42
  %45 = load i64*, i64** %6, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  %51 = load i64*, i64** %6, align 8
  %52 = getelementptr inbounds i64, i64* %51, i32 1
  store i64* %52, i64** %6, align 8
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %34

55:                                               ; preds = %42
  %56 = load i32, i32* %4, align 4
  %57 = srem i32 %56, 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @EPROTO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %59, %20
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @pr_err(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
