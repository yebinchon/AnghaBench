; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_pkgver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_ethtool.c_bnxt_get_pkgver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnxt = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BNX_DIR_TYPE_PKG_LOG = common dso_local global i32 0, align 4
@BNX_DIR_ORDINAL_FIRST = common dso_local global i32 0, align 4
@BNX_DIR_EXT_NONE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Unable to allocate memory for pkg version, length = %u\0A\00", align 1
@BNX_PKG_LOG_FIELD_IDX_PKG_VERSION = common dso_local global i32 0, align 4
@FW_VER_STR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"/pkg %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @bnxt_get_pkgver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_get_pkgver(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.bnxt* @netdev_priv(%struct.net_device* %9)
  store %struct.bnxt* %10, %struct.bnxt** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = load i32, i32* @BNX_DIR_TYPE_PKG_LOG, align 4
  %13 = load i32, i32* @BNX_DIR_ORDINAL_FIRST, align 4
  %14 = load i32, i32* @BNX_DIR_EXT_NONE, align 4
  %15 = call i64 @bnxt_find_nvram_item(%struct.net_device* %11, i32 %12, i32 %13, i32 %14, i32* %4, i32* null, i32* %6)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %77

18:                                               ; preds = %1
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32* @kzalloc(i32 %19, i32 %20)
  store i32* %21, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %18
  %25 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %26 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %77

31:                                               ; preds = %18
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = call i64 @bnxt_get_nvram_item(%struct.net_device* %32, i32 %33, i32 0, i32 %34, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %74

39:                                               ; preds = %31
  %40 = load i32, i32* @BNX_PKG_LOG_FIELD_IDX_PKG_VERSION, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i8* @bnxt_parse_pkglog(i32 %40, i32* %41, i32 %42)
  store i8* %43, i8** %5, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %73

46:                                               ; preds = %39
  %47 = load i8*, i8** %5, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %73

51:                                               ; preds = %46
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @isdigit(i8 signext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %51
  %57 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %58 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @strlen(i64 %59)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %62 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load i32, i32* @FW_VER_STR_LEN, align 4
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %67, %68
  %70 = sub nsw i32 %69, 1
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @snprintf(i64 %66, i32 %70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  br label %73

73:                                               ; preds = %56, %51, %46, %39
  br label %74

74:                                               ; preds = %73, %38
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @kfree(i32* %75)
  br label %77

77:                                               ; preds = %74, %24, %17
  ret void
}

declare dso_local %struct.bnxt* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @bnxt_find_nvram_item(%struct.net_device*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i64 @bnxt_get_nvram_item(%struct.net_device*, i32, i32, i32, i32*) #1

declare dso_local i8* @bnxt_parse_pkglog(i32, i32*, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @strlen(i64) #1

declare dso_local i32 @snprintf(i64, i32, i8*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
