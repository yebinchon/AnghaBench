; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.dsa_switch = type { i32 }
%struct.bcm_sf2_priv = type { i32 }

@bcm_sf2_cfp_stats = common dso_local global %struct.TYPE_3__* null, align 8
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@ETH_SS_STATS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"CFP%03d_%sCntr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcm_sf2_cfp_get_strings(%struct.dsa_switch* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bcm_sf2_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %18 = call %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch* %17)
  store %struct.bcm_sf2_priv* %18, %struct.bcm_sf2_priv** %9, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bcm_sf2_cfp_stats, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @ETH_SS_STATS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 1, i32* %16, align 4
  br label %73

29:                                               ; preds = %4
  store i32 1, i32* %13, align 4
  br label %30

30:                                               ; preds = %69, %29
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %9, align 8
  %33 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %31, %34
  br i1 %35, label %36, label %72

36:                                               ; preds = %30
  store i32 0, i32* %14, align 4
  br label %37

37:                                               ; preds = %65, %36
  %38 = load i32, i32* %14, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %37
  %42 = trunc i64 %22 to i32
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** @bcm_sf2_cfp_stats, align 8
  %45 = load i32, i32* %14, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @snprintf(i8* %24, i32 %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %43, i8* %49)
  %51 = load i32, i32* %13, align 4
  %52 = sub i32 %51, 1
  %53 = load i32, i32* %10, align 4
  %54 = mul i32 %52, %53
  %55 = load i32, i32* %14, align 4
  %56 = add i32 %54, %55
  store i32 %56, i32* %15, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %60 = mul i32 %58, %59
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %64 = call i32 @strlcpy(i32* %62, i8* %24, i32 %63)
  br label %65

65:                                               ; preds = %41
  %66 = load i32, i32* %14, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %14, align 4
  br label %37

68:                                               ; preds = %37
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %13, align 4
  %71 = add i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %30

72:                                               ; preds = %30
  store i32 0, i32* %16, align 4
  br label %73

73:                                               ; preds = %72, %28
  %74 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %74)
  %75 = load i32, i32* %16, align 4
  switch i32 %75, label %77 [
    i32 0, label %76
    i32 1, label %76
  ]

76:                                               ; preds = %73, %73
  ret void

77:                                               ; preds = %73
  unreachable
}

declare dso_local %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @strlcpy(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
