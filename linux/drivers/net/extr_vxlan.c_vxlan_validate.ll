; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.ifla_vxlan_port_range = type { i32, i32 }

@IFLA_ADDRESS = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Provided link layer address is not Ethernet\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Provided Ethernet address is not unicast\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@IFLA_MTU = common dso_local global i64 0, align 8
@ETH_MIN_MTU = common dso_local global i64 0, align 8
@ETH_MAX_MTU = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"MTU must be between 68 and 65535\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Required attributes not provided to perform the operation\00", align 1
@IFLA_VXLAN_ID = common dso_local global i64 0, align 8
@VXLAN_N_VID = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"VXLAN ID must be lower than 16777216\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@IFLA_VXLAN_PORT_RANGE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [26 x i8] c"Invalid source port range\00", align 1
@IFLA_VXLAN_DF = common dso_local global i64 0, align 8
@VXLAN_DF_MAX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Invalid DF attribute\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @vxlan_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_validate(%struct.nlattr** %0, %struct.nlattr** %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ifla_vxlan_port_range*, align 8
  %11 = alloca i32, align 4
  store %struct.nlattr** %0, %struct.nlattr*** %5, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %12 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %13 = load i64, i64* @IFLA_ADDRESS, align 8
  %14 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %13
  %15 = load %struct.nlattr*, %struct.nlattr** %14, align 8
  %16 = icmp ne %struct.nlattr* %15, null
  br i1 %16, label %17, label %52

17:                                               ; preds = %3
  %18 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %19 = load i64, i64* @IFLA_ADDRESS, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = call i64 @nla_len(%struct.nlattr* %21)
  %23 = load i64, i64* @ETH_ALEN, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %27 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %28 = load i64, i64* @IFLA_ADDRESS, align 8
  %29 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %28
  %30 = load %struct.nlattr*, %struct.nlattr** %29, align 8
  %31 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %26, %struct.nlattr* %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %174

34:                                               ; preds = %17
  %35 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %36 = load i64, i64* @IFLA_ADDRESS, align 8
  %37 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %35, i64 %36
  %38 = load %struct.nlattr*, %struct.nlattr** %37, align 8
  %39 = call %struct.ifla_vxlan_port_range* @nla_data(%struct.nlattr* %38)
  %40 = call i32 @is_valid_ether_addr(%struct.ifla_vxlan_port_range* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %34
  %43 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %44 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %45 = load i64, i64* @IFLA_ADDRESS, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %43, %struct.nlattr* %47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EADDRNOTAVAIL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %174

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51, %3
  %53 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %54 = load i64, i64* @IFLA_MTU, align 8
  %55 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %53, i64 %54
  %56 = load %struct.nlattr*, %struct.nlattr** %55, align 8
  %57 = icmp ne %struct.nlattr* %56, null
  br i1 %57, label %58, label %81

58:                                               ; preds = %52
  %59 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %60 = load i64, i64* @IFLA_MTU, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %59, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = call i64 @nla_get_u32(%struct.nlattr* %62)
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @ETH_MIN_MTU, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %58
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* @ETH_MAX_MTU, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %67, %58
  %72 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %73 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %74 = load i64, i64* @IFLA_MTU, align 8
  %75 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %73, i64 %74
  %76 = load %struct.nlattr*, %struct.nlattr** %75, align 8
  %77 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %72, %struct.nlattr* %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %174

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %52
  %82 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %83 = icmp ne %struct.nlattr** %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %81
  %85 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %86 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %85, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %174

89:                                               ; preds = %81
  %90 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %91 = load i64, i64* @IFLA_VXLAN_ID, align 8
  %92 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %90, i64 %91
  %93 = load %struct.nlattr*, %struct.nlattr** %92, align 8
  %94 = icmp ne %struct.nlattr* %93, null
  br i1 %94, label %95, label %114

95:                                               ; preds = %89
  %96 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %97 = load i64, i64* @IFLA_VXLAN_ID, align 8
  %98 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %96, i64 %97
  %99 = load %struct.nlattr*, %struct.nlattr** %98, align 8
  %100 = call i64 @nla_get_u32(%struct.nlattr* %99)
  store i64 %100, i64* %9, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* @VXLAN_N_VID, align 8
  %103 = icmp sge i64 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %95
  %105 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %106 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %107 = load i64, i64* @IFLA_VXLAN_ID, align 8
  %108 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %106, i64 %107
  %109 = load %struct.nlattr*, %struct.nlattr** %108, align 8
  %110 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %105, %struct.nlattr* %109, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %111 = load i32, i32* @ERANGE, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %4, align 4
  br label %174

113:                                              ; preds = %95
  br label %114

114:                                              ; preds = %113, %89
  %115 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %116 = load i64, i64* @IFLA_VXLAN_PORT_RANGE, align 8
  %117 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %115, i64 %116
  %118 = load %struct.nlattr*, %struct.nlattr** %117, align 8
  %119 = icmp ne %struct.nlattr* %118, null
  br i1 %119, label %120, label %145

120:                                              ; preds = %114
  %121 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %122 = load i64, i64* @IFLA_VXLAN_PORT_RANGE, align 8
  %123 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %121, i64 %122
  %124 = load %struct.nlattr*, %struct.nlattr** %123, align 8
  %125 = call %struct.ifla_vxlan_port_range* @nla_data(%struct.nlattr* %124)
  store %struct.ifla_vxlan_port_range* %125, %struct.ifla_vxlan_port_range** %10, align 8
  %126 = load %struct.ifla_vxlan_port_range*, %struct.ifla_vxlan_port_range** %10, align 8
  %127 = getelementptr inbounds %struct.ifla_vxlan_port_range, %struct.ifla_vxlan_port_range* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @ntohs(i32 %128)
  %130 = load %struct.ifla_vxlan_port_range*, %struct.ifla_vxlan_port_range** %10, align 8
  %131 = getelementptr inbounds %struct.ifla_vxlan_port_range, %struct.ifla_vxlan_port_range* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i64 @ntohs(i32 %132)
  %134 = icmp slt i64 %129, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %120
  %136 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %137 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %138 = load i64, i64* @IFLA_VXLAN_PORT_RANGE, align 8
  %139 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %137, i64 %138
  %140 = load %struct.nlattr*, %struct.nlattr** %139, align 8
  %141 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %136, %struct.nlattr* %140, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %4, align 4
  br label %174

144:                                              ; preds = %120
  br label %145

145:                                              ; preds = %144, %114
  %146 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %147 = load i64, i64* @IFLA_VXLAN_DF, align 8
  %148 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %146, i64 %147
  %149 = load %struct.nlattr*, %struct.nlattr** %148, align 8
  %150 = icmp ne %struct.nlattr* %149, null
  br i1 %150, label %151, label %173

151:                                              ; preds = %145
  %152 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %153 = load i64, i64* @IFLA_VXLAN_DF, align 8
  %154 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %152, i64 %153
  %155 = load %struct.nlattr*, %struct.nlattr** %154, align 8
  %156 = call i32 @nla_get_u8(%struct.nlattr* %155)
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* %11, align 4
  %158 = icmp ult i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %151
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @VXLAN_DF_MAX, align 4
  %162 = icmp ugt i32 %160, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %159, %151
  %164 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %165 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %166 = load i64, i64* @IFLA_VXLAN_DF, align 8
  %167 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %165, i64 %166
  %168 = load %struct.nlattr*, %struct.nlattr** %167, align 8
  %169 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %164, %struct.nlattr* %168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %170 = load i32, i32* @EINVAL, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %4, align 4
  br label %174

172:                                              ; preds = %159
  br label %173

173:                                              ; preds = %172, %145
  store i32 0, i32* %4, align 4
  br label %174

174:                                              ; preds = %173, %163, %135, %104, %84, %71, %42, %25
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*, i8*) #1

declare dso_local i32 @is_valid_ether_addr(%struct.ifla_vxlan_port_range*) #1

declare dso_local %struct.ifla_vxlan_port_range* @nla_data(%struct.nlattr*) #1

declare dso_local i64 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
