; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_encap_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_encap_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gtp_dev = type { i32, %struct.sock*, %struct.sock* }
%struct.sock = type { i32 }
%struct.nlattr = type { i32 }

@GTP_ROLE_GGSN = common dso_local global i32 0, align 4
@IFLA_GTP_FD0 = common dso_local global i64 0, align 8
@UDP_ENCAP_GTP0 = common dso_local global i32 0, align 4
@IFLA_GTP_FD1 = common dso_local global i64 0, align 8
@UDP_ENCAP_GTP1U = common dso_local global i32 0, align 4
@IFLA_GTP_ROLE = common dso_local global i64 0, align 8
@GTP_ROLE_SGSN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gtp_dev*, %struct.nlattr**)* @gtp_encap_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gtp_encap_enable(%struct.gtp_dev* %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gtp_dev*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.gtp_dev* %0, %struct.gtp_dev** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  store %struct.sock* null, %struct.sock** %6, align 8
  store %struct.sock* null, %struct.sock** %7, align 8
  %11 = load i32, i32* @GTP_ROLE_GGSN, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %13 = load i64, i64* @IFLA_GTP_FD0, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %19 = load i64, i64* @IFLA_GTP_FD0, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = call i8* @nla_get_u32(%struct.nlattr* %21)
  store i8* %22, i8** %9, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* @UDP_ENCAP_GTP0, align 4
  %25 = load %struct.gtp_dev*, %struct.gtp_dev** %4, align 8
  %26 = call %struct.sock* @gtp_encap_enable_socket(i8* %23, i32 %24, %struct.gtp_dev* %25)
  store %struct.sock* %26, %struct.sock** %7, align 8
  %27 = load %struct.sock*, %struct.sock** %7, align 8
  %28 = call i64 @IS_ERR(%struct.sock* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load %struct.sock*, %struct.sock** %7, align 8
  %32 = call i32 @PTR_ERR(%struct.sock* %31)
  store i32 %32, i32* %3, align 4
  br label %105

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %36 = load i64, i64* @IFLA_GTP_FD1, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %40, label %63

40:                                               ; preds = %34
  %41 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %42 = load i64, i64* @IFLA_GTP_FD1, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = call i8* @nla_get_u32(%struct.nlattr* %44)
  store i8* %45, i8** %10, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* @UDP_ENCAP_GTP1U, align 4
  %48 = load %struct.gtp_dev*, %struct.gtp_dev** %4, align 8
  %49 = call %struct.sock* @gtp_encap_enable_socket(i8* %46, i32 %47, %struct.gtp_dev* %48)
  store %struct.sock* %49, %struct.sock** %6, align 8
  %50 = load %struct.sock*, %struct.sock** %6, align 8
  %51 = call i64 @IS_ERR(%struct.sock* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %40
  %54 = load %struct.sock*, %struct.sock** %7, align 8
  %55 = icmp ne %struct.sock* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load %struct.sock*, %struct.sock** %7, align 8
  %58 = call i32 @gtp_encap_disable_sock(%struct.sock* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = load %struct.sock*, %struct.sock** %6, align 8
  %61 = call i32 @PTR_ERR(%struct.sock* %60)
  store i32 %61, i32* %3, align 4
  br label %105

62:                                               ; preds = %40
  br label %63

63:                                               ; preds = %62, %34
  %64 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %65 = load i64, i64* @IFLA_GTP_ROLE, align 8
  %66 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %64, i64 %65
  %67 = load %struct.nlattr*, %struct.nlattr** %66, align 8
  %68 = icmp ne %struct.nlattr* %67, null
  br i1 %68, label %69, label %95

69:                                               ; preds = %63
  %70 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %71 = load i64, i64* @IFLA_GTP_ROLE, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %70, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = call i8* @nla_get_u32(%struct.nlattr* %73)
  %75 = ptrtoint i8* %74 to i32
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @GTP_ROLE_SGSN, align 4
  %78 = icmp ugt i32 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %69
  %80 = load %struct.sock*, %struct.sock** %7, align 8
  %81 = icmp ne %struct.sock* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load %struct.sock*, %struct.sock** %7, align 8
  %84 = call i32 @gtp_encap_disable_sock(%struct.sock* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load %struct.sock*, %struct.sock** %6, align 8
  %87 = icmp ne %struct.sock* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.sock*, %struct.sock** %6, align 8
  %90 = call i32 @gtp_encap_disable_sock(%struct.sock* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %105

94:                                               ; preds = %69
  br label %95

95:                                               ; preds = %94, %63
  %96 = load %struct.sock*, %struct.sock** %7, align 8
  %97 = load %struct.gtp_dev*, %struct.gtp_dev** %4, align 8
  %98 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %97, i32 0, i32 2
  store %struct.sock* %96, %struct.sock** %98, align 8
  %99 = load %struct.sock*, %struct.sock** %6, align 8
  %100 = load %struct.gtp_dev*, %struct.gtp_dev** %4, align 8
  %101 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %100, i32 0, i32 1
  store %struct.sock* %99, %struct.sock** %101, align 8
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.gtp_dev*, %struct.gtp_dev** %4, align 8
  %104 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  store i32 0, i32* %3, align 4
  br label %105

105:                                              ; preds = %95, %91, %59, %30
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i8* @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.sock* @gtp_encap_enable_socket(i8*, i32, %struct.gtp_dev*) #1

declare dso_local i64 @IS_ERR(%struct.sock*) #1

declare dso_local i32 @PTR_ERR(%struct.sock*) #1

declare dso_local i32 @gtp_encap_disable_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
