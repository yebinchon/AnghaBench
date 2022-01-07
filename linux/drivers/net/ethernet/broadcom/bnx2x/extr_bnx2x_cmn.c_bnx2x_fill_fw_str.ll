; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_fill_fw_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_fill_fw_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@PHY_FW_VER_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"bc %d.%d.%d%s%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" phy \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_fill_fw_str(%struct.bnx2x* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %10 = call i64 @IS_PF(%struct.bnx2x* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %65

12:                                               ; preds = %3
  %13 = load i32, i32* @PHY_FW_VER_LEN, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 0, i8* %17, align 16
  %18 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %19 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %18, i32 0, i32 2
  %20 = load i32, i32* @PHY_FW_VER_LEN, align 4
  %21 = call i32 @bnx2x_get_ext_phy_fw_version(i32* %19, i8* %16, i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %24 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @strlcpy(i8* %22, i32 %25, i64 %26)
  %28 = load i8*, i8** %5, align 8
  %29 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %30 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @strlen(i32 %31)
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %28, i64 %33
  %35 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %36 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strlen(i32 %37)
  %39 = sub nsw i32 32, %38
  %40 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %41 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 16711680
  %45 = ashr i32 %44, 16
  %46 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %47 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 65280
  %51 = ashr i32 %50, 8
  %52 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %53 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 255
  %57 = getelementptr inbounds i8, i8* %16, i64 0
  %58 = load i8, i8* %57, align 16
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %63 = call i32 @snprintf(i8* %34, i32 %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %51, i32 %56, i8* %62, i8* %16)
  %64 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %64)
  br label %70

65:                                               ; preds = %3
  %66 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @bnx2x_vf_fill_fw_str(%struct.bnx2x* %66, i8* %67, i64 %68)
  br label %70

70:                                               ; preds = %65, %12
  ret void
}

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @bnx2x_get_ext_phy_fw_version(i32*, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @strlen(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @bnx2x_vf_fill_fw_str(%struct.bnx2x*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
