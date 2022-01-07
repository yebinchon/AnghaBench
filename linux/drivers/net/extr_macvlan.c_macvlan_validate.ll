; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@IFLA_ADDRESS = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@IFLA_MACVLAN_FLAGS = common dso_local global i64 0, align 8
@MACVLAN_FLAG_NOPROMISC = common dso_local global i32 0, align 4
@IFLA_MACVLAN_MODE = common dso_local global i64 0, align 8
@IFLA_MACVLAN_MACADDR_MODE = common dso_local global i64 0, align 8
@IFLA_MACVLAN_MACADDR = common dso_local global i64 0, align 8
@IFLA_MACVLAN_MACADDR_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @macvlan_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_validate(%struct.nlattr** %0, %struct.nlattr** %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %8 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %9 = load i64, i64* @IFLA_ADDRESS, align 8
  %10 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %8, i64 %9
  %11 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %12 = icmp ne %struct.nlattr* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %3
  %14 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %15 = load i64, i64* @IFLA_ADDRESS, align 8
  %16 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %14, i64 %15
  %17 = load %struct.nlattr*, %struct.nlattr** %16, align 8
  %18 = call i64 @nla_len(%struct.nlattr* %17)
  %19 = load i64, i64* @ETH_ALEN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %132

24:                                               ; preds = %13
  %25 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %26 = load i64, i64* @IFLA_ADDRESS, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %25, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = call i32 @nla_data(%struct.nlattr* %28)
  %30 = call i32 @is_valid_ether_addr(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @EADDRNOTAVAIL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %132

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %38 = icmp ne %struct.nlattr** %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %132

40:                                               ; preds = %36
  %41 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %42 = load i64, i64* @IFLA_MACVLAN_FLAGS, align 8
  %43 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %41, i64 %42
  %44 = load %struct.nlattr*, %struct.nlattr** %43, align 8
  %45 = icmp ne %struct.nlattr* %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %48 = load i64, i64* @IFLA_MACVLAN_FLAGS, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = call i32 @nla_get_u16(%struct.nlattr* %50)
  %52 = load i32, i32* @MACVLAN_FLAG_NOPROMISC, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %46
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %132

59:                                               ; preds = %46, %40
  %60 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %61 = load i64, i64* @IFLA_MACVLAN_MODE, align 8
  %62 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %60, i64 %61
  %63 = load %struct.nlattr*, %struct.nlattr** %62, align 8
  %64 = icmp ne %struct.nlattr* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %59
  %66 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %67 = load i64, i64* @IFLA_MACVLAN_MODE, align 8
  %68 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %66, i64 %67
  %69 = load %struct.nlattr*, %struct.nlattr** %68, align 8
  %70 = call i32 @nla_get_u32(%struct.nlattr* %69)
  switch i32 %70, label %72 [
    i32 130, label %71
    i32 128, label %71
    i32 132, label %71
    i32 131, label %71
    i32 129, label %71
  ]

71:                                               ; preds = %65, %65, %65, %65, %65
  br label %75

72:                                               ; preds = %65
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %132

75:                                               ; preds = %71
  br label %76

76:                                               ; preds = %75, %59
  %77 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %78 = load i64, i64* @IFLA_MACVLAN_MACADDR_MODE, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %77, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = icmp ne %struct.nlattr* %80, null
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %84 = load i64, i64* @IFLA_MACVLAN_MACADDR_MODE, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %83, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = call i32 @nla_get_u32(%struct.nlattr* %86)
  switch i32 %87, label %89 [
    i32 136, label %88
    i32 135, label %88
    i32 134, label %88
    i32 133, label %88
  ]

88:                                               ; preds = %82, %82, %82, %82
  br label %92

89:                                               ; preds = %82
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %132

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %92, %76
  %94 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %95 = load i64, i64* @IFLA_MACVLAN_MACADDR, align 8
  %96 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %94, i64 %95
  %97 = load %struct.nlattr*, %struct.nlattr** %96, align 8
  %98 = icmp ne %struct.nlattr* %97, null
  br i1 %98, label %99, label %122

99:                                               ; preds = %93
  %100 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %101 = load i64, i64* @IFLA_MACVLAN_MACADDR, align 8
  %102 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %100, i64 %101
  %103 = load %struct.nlattr*, %struct.nlattr** %102, align 8
  %104 = call i64 @nla_len(%struct.nlattr* %103)
  %105 = load i64, i64* @ETH_ALEN, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %99
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %132

110:                                              ; preds = %99
  %111 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %112 = load i64, i64* @IFLA_MACVLAN_MACADDR, align 8
  %113 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %111, i64 %112
  %114 = load %struct.nlattr*, %struct.nlattr** %113, align 8
  %115 = call i32 @nla_data(%struct.nlattr* %114)
  %116 = call i32 @is_valid_ether_addr(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %110
  %119 = load i32, i32* @EADDRNOTAVAIL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %132

121:                                              ; preds = %110
  br label %122

122:                                              ; preds = %121, %93
  %123 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %124 = load i64, i64* @IFLA_MACVLAN_MACADDR_COUNT, align 8
  %125 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %123, i64 %124
  %126 = load %struct.nlattr*, %struct.nlattr** %125, align 8
  %127 = icmp ne %struct.nlattr* %126, null
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %132

131:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %128, %118, %107, %89, %72, %56, %39, %32, %21
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
