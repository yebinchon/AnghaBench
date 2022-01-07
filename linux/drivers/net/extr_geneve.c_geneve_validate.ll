; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@IFLA_ADDRESS = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Provided link layer address is not Ethernet\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Provided Ethernet address is not unicast\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Not enough attributes provided to perform the operation\00", align 1
@IFLA_GENEVE_ID = common dso_local global i64 0, align 8
@GENEVE_N_VID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Geneve ID must be lower than 16777216\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@IFLA_GENEVE_DF = common dso_local global i64 0, align 8
@GENEVE_DF_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Invalid DF attribute\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @geneve_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geneve_validate(%struct.nlattr** %0, %struct.nlattr** %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %10 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %11 = load i64, i64* @IFLA_ADDRESS, align 8
  %12 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %10, i64 %11
  %13 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %14 = icmp ne %struct.nlattr* %13, null
  br i1 %14, label %15, label %50

15:                                               ; preds = %3
  %16 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %17 = load i64, i64* @IFLA_ADDRESS, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = call i64 @nla_len(%struct.nlattr* %19)
  %21 = load i64, i64* @ETH_ALEN, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %15
  %24 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %25 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %26 = load i64, i64* @IFLA_ADDRESS, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %24, %struct.nlattr* %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %112

32:                                               ; preds = %15
  %33 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %34 = load i64, i64* @IFLA_ADDRESS, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = call i32 @nla_data(%struct.nlattr* %36)
  %38 = call i32 @is_valid_ether_addr(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %32
  %41 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %42 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %43 = load i64, i64* @IFLA_ADDRESS, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %41, %struct.nlattr* %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EADDRNOTAVAIL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %112

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49, %3
  %51 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %52 = icmp ne %struct.nlattr** %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %50
  %54 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %55 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %54, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %112

58:                                               ; preds = %50
  %59 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %60 = load i64, i64* @IFLA_GENEVE_ID, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %59, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = icmp ne %struct.nlattr* %62, null
  br i1 %63, label %64, label %83

64:                                               ; preds = %58
  %65 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %66 = load i64, i64* @IFLA_GENEVE_ID, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %65, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  %69 = call i64 @nla_get_u32(%struct.nlattr* %68)
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @GENEVE_N_VID, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %82

73:                                               ; preds = %64
  %74 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %75 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %76 = load i64, i64* @IFLA_GENEVE_ID, align 8
  %77 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %75, i64 %76
  %78 = load %struct.nlattr*, %struct.nlattr** %77, align 8
  %79 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %74, %struct.nlattr* %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @ERANGE, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %112

82:                                               ; preds = %64
  br label %83

83:                                               ; preds = %82, %58
  %84 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %85 = load i64, i64* @IFLA_GENEVE_DF, align 8
  %86 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %84, i64 %85
  %87 = load %struct.nlattr*, %struct.nlattr** %86, align 8
  %88 = icmp ne %struct.nlattr* %87, null
  br i1 %88, label %89, label %111

89:                                               ; preds = %83
  %90 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %91 = load i64, i64* @IFLA_GENEVE_DF, align 8
  %92 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %90, i64 %91
  %93 = load %struct.nlattr*, %struct.nlattr** %92, align 8
  %94 = call i32 @nla_get_u8(%struct.nlattr* %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ult i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %89
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @GENEVE_DF_MAX, align 4
  %100 = icmp ugt i32 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %97, %89
  %102 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %103 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %104 = load i64, i64* @IFLA_GENEVE_DF, align 8
  %105 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %103, i64 %104
  %106 = load %struct.nlattr*, %struct.nlattr** %105, align 8
  %107 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %102, %struct.nlattr* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %112

110:                                              ; preds = %97
  br label %111

111:                                              ; preds = %110, %83
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %101, %73, %53, %40, %23
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*, i8*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
