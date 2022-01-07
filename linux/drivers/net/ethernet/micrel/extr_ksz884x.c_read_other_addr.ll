; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_read_other_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_read_other_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { %struct.ksz_switch* }
%struct.ksz_switch = type { i8** }

@EEPROM_DATA_OTHER_MAC_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*)* @read_other_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_other_addr(%struct.ksz_hw* %0) #0 {
  %2 = alloca %struct.ksz_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [3 x i32], align 4
  %5 = alloca %struct.ksz_switch*, align 8
  store %struct.ksz_hw* %0, %struct.ksz_hw** %2, align 8
  %6 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %6, i32 0, i32 0
  %8 = load %struct.ksz_switch*, %struct.ksz_switch** %7, align 8
  store %struct.ksz_switch* %8, %struct.ksz_switch** %5, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %22, %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load %struct.ksz_hw*, %struct.ksz_hw** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @EEPROM_DATA_OTHER_MAC_ADDR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @eeprom_read(%struct.ksz_hw* %13, i64 %17)
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 %20
  store i32 %18, i32* %21, align 4
  br label %22

22:                                               ; preds = %12
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %9

25:                                               ; preds = %9
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %93

37:                                               ; preds = %33, %29, %25
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 65535
  br i1 %40, label %41, label %93

41:                                               ; preds = %37
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %47 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %46, i32 0, i32 0
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 5
  store i8* %45, i8** %49, align 8
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 8
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %56 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %55, i32 0, i32 0
  %57 = load i8**, i8*** %56, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 4
  store i8* %54, i8** %58, align 8
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %64 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %63, i32 0, i32 0
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 3
  store i8* %62, i8** %66, align 8
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 8
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %73 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %72, i32 0, i32 0
  %74 = load i8**, i8*** %73, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i64 2
  store i8* %71, i8** %75, align 8
  %76 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %81 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %80, i32 0, i32 0
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 1
  store i8* %79, i8** %83, align 8
  %84 = getelementptr inbounds [3 x i32], [3 x i32]* %4, i64 0, i64 2
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 8
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = load %struct.ksz_switch*, %struct.ksz_switch** %5, align 8
  %90 = getelementptr inbounds %struct.ksz_switch, %struct.ksz_switch* %89, i32 0, i32 0
  %91 = load i8**, i8*** %90, align 8
  %92 = getelementptr inbounds i8*, i8** %91, i64 0
  store i8* %88, i8** %92, align 8
  br label %93

93:                                               ; preds = %41, %37, %33
  ret void
}

declare dso_local i32 @eeprom_read(%struct.ksz_hw*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
