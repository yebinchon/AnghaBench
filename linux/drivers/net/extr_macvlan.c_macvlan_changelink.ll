; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_changelink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macvlan.c_macvlan_changelink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.macvlan_dev = type { i32, i32, i32, i32 }

@IFLA_MACVLAN_MODE = common dso_local global i64 0, align 8
@MACVLAN_MODE_PASSTHRU = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MACVLAN_MODE_SOURCE = common dso_local global i64 0, align 8
@IFLA_MACVLAN_FLAGS = common dso_local global i64 0, align 8
@MACVLAN_FLAG_NOPROMISC = common dso_local global i32 0, align 4
@IFLA_MACVLAN_MACADDR_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @macvlan_changelink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macvlan_changelink(%struct.net_device* %0, %struct.nlattr** %1, %struct.nlattr** %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  %10 = alloca %struct.macvlan_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %7, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.macvlan_dev* @netdev_priv(%struct.net_device* %18)
  store %struct.macvlan_dev* %19, %struct.macvlan_dev** %10, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %21 = icmp ne %struct.nlattr** %20, null
  br i1 %21, label %22, label %68

22:                                               ; preds = %4
  %23 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %24 = load i64, i64* @IFLA_MACVLAN_MODE, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %28, label %68

28:                                               ; preds = %22
  store i32 1, i32* %12, align 4
  %29 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %30 = load i64, i64* @IFLA_MACVLAN_MODE, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = call i32 @nla_get_u32(%struct.nlattr* %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @MACVLAN_MODE_PASSTHRU, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load %struct.macvlan_dev*, %struct.macvlan_dev** %10, align 8
  %39 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MACVLAN_MODE_PASSTHRU, align 4
  %42 = icmp eq i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = icmp ne i32 %37, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %28
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %165

48:                                               ; preds = %28
  %49 = load %struct.macvlan_dev*, %struct.macvlan_dev** %10, align 8
  %50 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @MACVLAN_MODE_SOURCE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %48
  %56 = load %struct.macvlan_dev*, %struct.macvlan_dev** %10, align 8
  %57 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.macvlan_dev*, %struct.macvlan_dev** %10, align 8
  %63 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.macvlan_dev*, %struct.macvlan_dev** %10, align 8
  %66 = call i32 @macvlan_flush_sources(i32 %64, %struct.macvlan_dev* %65)
  br label %67

67:                                               ; preds = %61, %55, %48
  br label %68

68:                                               ; preds = %67, %22, %4
  %69 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %70 = icmp ne %struct.nlattr** %69, null
  br i1 %70, label %71, label %123

71:                                               ; preds = %68
  %72 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %73 = load i64, i64* @IFLA_MACVLAN_FLAGS, align 8
  %74 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %72, i64 %73
  %75 = load %struct.nlattr*, %struct.nlattr** %74, align 8
  %76 = icmp ne %struct.nlattr* %75, null
  br i1 %76, label %77, label %123

77:                                               ; preds = %71
  %78 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %79 = load i64, i64* @IFLA_MACVLAN_FLAGS, align 8
  %80 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %78, i64 %79
  %81 = load %struct.nlattr*, %struct.nlattr** %80, align 8
  %82 = call i32 @nla_get_u16(%struct.nlattr* %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = load %struct.macvlan_dev*, %struct.macvlan_dev** %10, align 8
  %85 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = xor i32 %83, %86
  %88 = load i32, i32* @MACVLAN_FLAG_NOPROMISC, align 4
  %89 = and i32 %87, %88
  store i32 %89, i32* %16, align 4
  %90 = load %struct.macvlan_dev*, %struct.macvlan_dev** %10, align 8
  %91 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @macvlan_passthru(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %119

95:                                               ; preds = %77
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %119

98:                                               ; preds = %95
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @MACVLAN_FLAG_NOPROMISC, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.macvlan_dev*, %struct.macvlan_dev** %10, align 8
  %105 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @dev_set_promiscuity(i32 %106, i32 -1)
  store i32 %107, i32* %17, align 4
  br label %113

108:                                              ; preds = %98
  %109 = load %struct.macvlan_dev*, %struct.macvlan_dev** %10, align 8
  %110 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @dev_set_promiscuity(i32 %111, i32 1)
  store i32 %112, i32* %17, align 4
  br label %113

113:                                              ; preds = %108, %103
  %114 = load i32, i32* %17, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* %17, align 4
  store i32 %117, i32* %5, align 4
  br label %165

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %118, %95, %77
  %120 = load i32, i32* %15, align 4
  %121 = load %struct.macvlan_dev*, %struct.macvlan_dev** %10, align 8
  %122 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %119, %71, %68
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.macvlan_dev*, %struct.macvlan_dev** %10, align 8
  %129 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %126, %123
  %131 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %132 = icmp ne %struct.nlattr** %131, null
  br i1 %132, label %133, label %164

133:                                              ; preds = %130
  %134 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %135 = load i64, i64* @IFLA_MACVLAN_MACADDR_MODE, align 8
  %136 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %134, i64 %135
  %137 = load %struct.nlattr*, %struct.nlattr** %136, align 8
  %138 = icmp ne %struct.nlattr* %137, null
  br i1 %138, label %139, label %164

139:                                              ; preds = %133
  %140 = load %struct.macvlan_dev*, %struct.macvlan_dev** %10, align 8
  %141 = getelementptr inbounds %struct.macvlan_dev, %struct.macvlan_dev* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* @MACVLAN_MODE_SOURCE, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %5, align 4
  br label %165

149:                                              ; preds = %139
  %150 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %151 = load i64, i64* @IFLA_MACVLAN_MACADDR_MODE, align 8
  %152 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %150, i64 %151
  %153 = load %struct.nlattr*, %struct.nlattr** %152, align 8
  %154 = call i32 @nla_get_u32(%struct.nlattr* %153)
  store i32 %154, i32* %13, align 4
  %155 = load %struct.macvlan_dev*, %struct.macvlan_dev** %10, align 8
  %156 = load i32, i32* %13, align 4
  %157 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %158 = call i32 @macvlan_changelink_sources(%struct.macvlan_dev* %155, i32 %156, %struct.nlattr** %157)
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %149
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %5, align 4
  br label %165

163:                                              ; preds = %149
  br label %164

164:                                              ; preds = %163, %133, %130
  store i32 0, i32* %5, align 4
  br label %165

165:                                              ; preds = %164, %161, %146, %116, %45
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local %struct.macvlan_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @macvlan_flush_sources(i32, %struct.macvlan_dev*) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i64 @macvlan_passthru(i32) #1

declare dso_local i32 @dev_set_promiscuity(i32, i32) #1

declare dso_local i32 @macvlan_changelink_sources(%struct.macvlan_dev*, i32, %struct.nlattr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
