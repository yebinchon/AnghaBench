; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_genl_new_pdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_genl_new_pdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32* }
%struct.gtp_dev = type { %struct.sock*, %struct.sock* }
%struct.sock = type { i32 }

@GTPA_VERSION = common dso_local global i64 0, align 8
@GTPA_LINK = common dso_local global i64 0, align 8
@GTPA_PEER_ADDRESS = common dso_local global i64 0, align 8
@GTPA_MS_ADDRESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GTPA_TID = common dso_local global i64 0, align 8
@GTPA_FLOW = common dso_local global i64 0, align 8
@GTPA_I_TEI = common dso_local global i64 0, align 8
@GTPA_O_TEI = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @gtp_genl_new_pdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gtp_genl_new_pdp(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gtp_dev*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @GTPA_VERSION, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %2
  %18 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @GTPA_LINK, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %41

25:                                               ; preds = %17
  %26 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %27 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @GTPA_PEER_ADDRESS, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %35 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* @GTPA_MS_ADDRESS, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %33, %25, %17, %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %143

44:                                               ; preds = %33
  %45 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %46 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @GTPA_VERSION, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @nla_get_u32(i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  switch i32 %52, label %93 [
    i32 129, label %53
    i32 128, label %73
  ]

53:                                               ; preds = %44
  %54 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %55 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @GTPA_TID, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %53
  %62 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %63 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @GTPA_FLOW, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %61, %53
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %143

72:                                               ; preds = %61
  br label %96

73:                                               ; preds = %44
  %74 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %75 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @GTPA_I_TEI, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %73
  %82 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %83 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @GTPA_O_TEI, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %81, %73
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %143

92:                                               ; preds = %81
  br label %96

93:                                               ; preds = %44
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %143

96:                                               ; preds = %92, %72
  %97 = call i32 (...) @rtnl_lock()
  %98 = call i32 (...) @rcu_read_lock()
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @sock_net(i32 %101)
  %103 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %104 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = call %struct.gtp_dev* @gtp_find_dev(i32 %102, i32* %105)
  store %struct.gtp_dev* %106, %struct.gtp_dev** %7, align 8
  %107 = load %struct.gtp_dev*, %struct.gtp_dev** %7, align 8
  %108 = icmp ne %struct.gtp_dev* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %96
  %110 = load i32, i32* @ENODEV, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %9, align 4
  br label %139

112:                                              ; preds = %96
  %113 = load i32, i32* %6, align 4
  %114 = icmp eq i32 %113, 129
  br i1 %114, label %115, label %119

115:                                              ; preds = %112
  %116 = load %struct.gtp_dev*, %struct.gtp_dev** %7, align 8
  %117 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %116, i32 0, i32 1
  %118 = load %struct.sock*, %struct.sock** %117, align 8
  store %struct.sock* %118, %struct.sock** %8, align 8
  br label %128

119:                                              ; preds = %112
  %120 = load i32, i32* %6, align 4
  %121 = icmp eq i32 %120, 128
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load %struct.gtp_dev*, %struct.gtp_dev** %7, align 8
  %124 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %123, i32 0, i32 0
  %125 = load %struct.sock*, %struct.sock** %124, align 8
  store %struct.sock* %125, %struct.sock** %8, align 8
  br label %127

126:                                              ; preds = %119
  store %struct.sock* null, %struct.sock** %8, align 8
  br label %127

127:                                              ; preds = %126, %122
  br label %128

128:                                              ; preds = %127, %115
  %129 = load %struct.sock*, %struct.sock** %8, align 8
  %130 = icmp ne %struct.sock* %129, null
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* @ENODEV, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %9, align 4
  br label %139

134:                                              ; preds = %128
  %135 = load %struct.gtp_dev*, %struct.gtp_dev** %7, align 8
  %136 = load %struct.sock*, %struct.sock** %8, align 8
  %137 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %138 = call i32 @ipv4_pdp_add(%struct.gtp_dev* %135, %struct.sock* %136, %struct.genl_info* %137)
  store i32 %138, i32* %9, align 4
  br label %139

139:                                              ; preds = %134, %131, %109
  %140 = call i32 (...) @rcu_read_unlock()
  %141 = call i32 (...) @rtnl_unlock()
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %3, align 4
  br label %143

143:                                              ; preds = %139, %93, %89, %69, %41
  %144 = load i32, i32* %3, align 4
  ret i32 %144
}

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.gtp_dev* @gtp_find_dev(i32, i32*) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @ipv4_pdp_add(%struct.gtp_dev*, %struct.sock*, %struct.genl_info*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @rtnl_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
