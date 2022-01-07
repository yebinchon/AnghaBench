; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_validate_add_rxsa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_validate_add_rxsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

@MACSEC_SA_ATTR_AN = common dso_local global i64 0, align 8
@MACSEC_SA_ATTR_KEY = common dso_local global i64 0, align 8
@MACSEC_SA_ATTR_KEYID = common dso_local global i64 0, align 8
@MACSEC_NUM_AN = common dso_local global i32 0, align 4
@MACSEC_SA_ATTR_PN = common dso_local global i64 0, align 8
@MACSEC_SA_ATTR_ACTIVE = common dso_local global i64 0, align 8
@MACSEC_KEYID_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**)* @validate_add_rxsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_add_rxsa(%struct.nlattr** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nlattr**, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %3, align 8
  %4 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %5 = load i64, i64* @MACSEC_SA_ATTR_AN, align 8
  %6 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %4, i64 %5
  %7 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %8 = icmp ne %struct.nlattr* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %11 = load i64, i64* @MACSEC_SA_ATTR_KEY, align 8
  %12 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %10, i64 %11
  %13 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %14 = icmp ne %struct.nlattr* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %17 = load i64, i64* @MACSEC_SA_ATTR_KEYID, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %15, %9, %1
  store i32 0, i32* %2, align 4
  br label %70

22:                                               ; preds = %15
  %23 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %24 = load i64, i64* @MACSEC_SA_ATTR_AN, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = call i32 @nla_get_u8(%struct.nlattr* %26)
  %28 = load i32, i32* @MACSEC_NUM_AN, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %70

31:                                               ; preds = %22
  %32 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %33 = load i64, i64* @MACSEC_SA_ATTR_PN, align 8
  %34 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %32, i64 %33
  %35 = load %struct.nlattr*, %struct.nlattr** %34, align 8
  %36 = icmp ne %struct.nlattr* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %31
  %38 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %39 = load i64, i64* @MACSEC_SA_ATTR_PN, align 8
  %40 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %38, i64 %39
  %41 = load %struct.nlattr*, %struct.nlattr** %40, align 8
  %42 = call i64 @nla_get_u32(%struct.nlattr* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %70

45:                                               ; preds = %37, %31
  %46 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %47 = load i64, i64* @MACSEC_SA_ATTR_ACTIVE, align 8
  %48 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %46, i64 %47
  %49 = load %struct.nlattr*, %struct.nlattr** %48, align 8
  %50 = icmp ne %struct.nlattr* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %45
  %52 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %53 = load i64, i64* @MACSEC_SA_ATTR_ACTIVE, align 8
  %54 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %52, i64 %53
  %55 = load %struct.nlattr*, %struct.nlattr** %54, align 8
  %56 = call i32 @nla_get_u8(%struct.nlattr* %55)
  %57 = icmp sgt i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %70

59:                                               ; preds = %51
  br label %60

60:                                               ; preds = %59, %45
  %61 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %62 = load i64, i64* @MACSEC_SA_ATTR_KEYID, align 8
  %63 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %61, i64 %62
  %64 = load %struct.nlattr*, %struct.nlattr** %63, align 8
  %65 = call i64 @nla_len(%struct.nlattr* %64)
  %66 = load i64, i64* @MACSEC_KEYID_LEN, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %70

69:                                               ; preds = %60
  store i32 1, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %68, %58, %44, %30, %21
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i64 @nla_len(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
