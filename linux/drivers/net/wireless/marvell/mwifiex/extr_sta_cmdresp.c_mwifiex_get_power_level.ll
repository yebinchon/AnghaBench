; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_get_power_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_get_power_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i8*, i8* }
%struct.mwifiex_types_power_group = type { i32 }
%struct.mwifiex_power_group = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, i8*)* @mwifiex_get_power_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_get_power_level(%struct.mwifiex_private* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mwifiex_types_power_group*, align 8
  %10 = alloca %struct.mwifiex_power_group*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %83

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to i8**
  %17 = bitcast i8** %16 to %struct.mwifiex_types_power_group*
  store %struct.mwifiex_types_power_group* %17, %struct.mwifiex_types_power_group** %9, align 8
  %18 = load %struct.mwifiex_types_power_group*, %struct.mwifiex_types_power_group** %9, align 8
  %19 = bitcast %struct.mwifiex_types_power_group* %18 to i8**
  %20 = getelementptr inbounds i8*, i8** %19, i64 4
  %21 = bitcast i8** %20 to %struct.mwifiex_power_group*
  store %struct.mwifiex_power_group* %21, %struct.mwifiex_power_group** %10, align 8
  %22 = load %struct.mwifiex_types_power_group*, %struct.mwifiex_types_power_group** %9, align 8
  %23 = getelementptr inbounds %struct.mwifiex_types_power_group, %struct.mwifiex_types_power_group* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp ult i64 %27, 8
  br i1 %28, label %29, label %30

29:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %83

30:                                               ; preds = %14
  %31 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %10, align 8
  %32 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %10, align 8
  %35 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = sub i64 %38, 8
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %67, %30
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp uge i64 %43, 8
  br i1 %44, label %45, label %72

45:                                               ; preds = %41
  %46 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %10, align 8
  %47 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %46, i32 1
  store %struct.mwifiex_power_group* %47, %struct.mwifiex_power_group** %10, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %10, align 8
  %50 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %45
  %54 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %10, align 8
  %55 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %53, %45
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %10, align 8
  %60 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load %struct.mwifiex_power_group*, %struct.mwifiex_power_group** %10, align 8
  %65 = getelementptr inbounds %struct.mwifiex_power_group, %struct.mwifiex_power_group* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %63, %57
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = sub i64 %69, 8
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %6, align 4
  br label %41

72:                                               ; preds = %41
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = inttoptr i64 %74 to i8*
  %76 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %77 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %76, i32 0, i32 1
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %82 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %72, %29, %13
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
