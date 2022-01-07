; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_bus_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_bus_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i32 }

@BNX2_FLAG_PCIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"PCI Express\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"PCI\00", align 1
@BNX2_FLAG_PCIX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"-X\00", align 1
@BNX2_FLAG_PCI_32BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c" 32-bit\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" 64-bit\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" %dMHz\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bnx2*, i8*)* @bnx2_bus_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bnx2_bus_string(%struct.bnx2* %0, i8* %1) #0 {
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  store i8* %6, i8** %5, align 8
  %7 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %8 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BNX2_FLAG_PCIE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %5, align 8
  %17 = sext i32 %15 to i64
  %18 = getelementptr inbounds i8, i8* %16, i64 %17
  store i8* %18, i8** %5, align 8
  br label %65

19:                                               ; preds = %2
  %20 = load i8*, i8** %5, align 8
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i8*, i8** %5, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %5, align 8
  %25 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %26 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BNX2_FLAG_PCIX, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %19
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i8*, i8** %5, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8* %36, i8** %5, align 8
  br label %37

37:                                               ; preds = %31, %19
  %38 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %39 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BNX2_FLAG_PCI_32BIT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i8*, i8** %5, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %5, align 8
  br label %56

50:                                               ; preds = %37
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 (i8*, i8*, ...) @sprintf(i8* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %53 = load i8*, i8** %5, align 8
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8* %55, i8** %5, align 8
  br label %56

56:                                               ; preds = %50, %44
  %57 = load i8*, i8** %5, align 8
  %58 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %59 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, i8*, ...) @sprintf(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %60)
  %62 = load i8*, i8** %5, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %5, align 8
  br label %65

65:                                               ; preds = %56, %13
  %66 = load i8*, i8** %4, align 8
  ret i8* %66
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
