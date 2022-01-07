; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_find_pdp_by_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_find_pdp_by_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdp_ctx = type { i32 }
%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.gtp_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GTPA_MS_ADDRESS = common dso_local global i64 0, align 8
@GTPA_VERSION = common dso_local global i64 0, align 8
@GTP_V0 = common dso_local global i64 0, align 8
@GTPA_TID = common dso_local global i64 0, align 8
@GTP_V1 = common dso_local global i64 0, align 8
@GTPA_I_TEI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pdp_ctx* (%struct.net*, %struct.nlattr**)* @gtp_find_pdp_by_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pdp_ctx* @gtp_find_pdp_by_link(%struct.net* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.pdp_ctx*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.gtp_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %9 = load %struct.net*, %struct.net** %4, align 8
  %10 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %11 = call %struct.gtp_dev* @gtp_find_dev(%struct.net* %9, %struct.nlattr** %10)
  store %struct.gtp_dev* %11, %struct.gtp_dev** %6, align 8
  %12 = load %struct.gtp_dev*, %struct.gtp_dev** %6, align 8
  %13 = icmp ne %struct.gtp_dev* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.pdp_ctx* @ERR_PTR(i32 %16)
  store %struct.pdp_ctx* %17, %struct.pdp_ctx** %3, align 8
  br label %87

18:                                               ; preds = %2
  %19 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %20 = load i64, i64* @GTPA_MS_ADDRESS, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = icmp ne %struct.nlattr* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %26 = load i64, i64* @GTPA_MS_ADDRESS, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = call i32 @nla_get_be32(%struct.nlattr* %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.gtp_dev*, %struct.gtp_dev** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.pdp_ctx* @ipv4_pdp_find(%struct.gtp_dev* %30, i32 %31)
  store %struct.pdp_ctx* %32, %struct.pdp_ctx** %3, align 8
  br label %87

33:                                               ; preds = %18
  %34 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %35 = load i64, i64* @GTPA_VERSION, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  br i1 %38, label %39, label %82

39:                                               ; preds = %33
  %40 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %41 = load i64, i64* @GTPA_VERSION, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = call i64 @nla_get_u32(%struct.nlattr* %43)
  store i64 %44, i64* %8, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @GTP_V0, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %39
  %49 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %50 = load i64, i64* @GTPA_TID, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %49, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = icmp ne %struct.nlattr* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.gtp_dev*, %struct.gtp_dev** %6, align 8
  %56 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %57 = load i64, i64* @GTPA_TID, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %56, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = call i32 @nla_get_u64(%struct.nlattr* %59)
  %61 = call %struct.pdp_ctx* @gtp0_pdp_find(%struct.gtp_dev* %55, i32 %60)
  store %struct.pdp_ctx* %61, %struct.pdp_ctx** %3, align 8
  br label %87

62:                                               ; preds = %48, %39
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @GTP_V1, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %68 = load i64, i64* @GTPA_I_TEI, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %67, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = icmp ne %struct.nlattr* %70, null
  br i1 %71, label %72, label %80

72:                                               ; preds = %66
  %73 = load %struct.gtp_dev*, %struct.gtp_dev** %6, align 8
  %74 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %75 = load i64, i64* @GTPA_I_TEI, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %74, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = call i64 @nla_get_u32(%struct.nlattr* %77)
  %79 = call %struct.pdp_ctx* @gtp1_pdp_find(%struct.gtp_dev* %73, i64 %78)
  store %struct.pdp_ctx* %79, %struct.pdp_ctx** %3, align 8
  br label %87

80:                                               ; preds = %66, %62
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81, %33
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  %86 = call %struct.pdp_ctx* @ERR_PTR(i32 %85)
  store %struct.pdp_ctx* %86, %struct.pdp_ctx** %3, align 8
  br label %87

87:                                               ; preds = %83, %72, %54, %24, %14
  %88 = load %struct.pdp_ctx*, %struct.pdp_ctx** %3, align 8
  ret %struct.pdp_ctx* %88
}

declare dso_local %struct.gtp_dev* @gtp_find_dev(%struct.net*, %struct.nlattr**) #1

declare dso_local %struct.pdp_ctx* @ERR_PTR(i32) #1

declare dso_local i32 @nla_get_be32(%struct.nlattr*) #1

declare dso_local %struct.pdp_ctx* @ipv4_pdp_find(%struct.gtp_dev*, i32) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.pdp_ctx* @gtp0_pdp_find(%struct.gtp_dev*, i32) #1

declare dso_local i32 @nla_get_u64(%struct.nlattr*) #1

declare dso_local %struct.pdp_ctx* @gtp1_pdp_find(%struct.gtp_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
