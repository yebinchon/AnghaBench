; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_genl_fill_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_genl_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.pdp_ctx = type { i32, %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@gtp_genl_family = common dso_local global i32 0, align 4
@GTPA_VERSION = common dso_local global i32 0, align 4
@GTPA_PEER_ADDRESS = common dso_local global i32 0, align 4
@GTPA_MS_ADDRESS = common dso_local global i32 0, align 4
@GTPA_TID = common dso_local global i32 0, align 4
@GTPA_PAD = common dso_local global i32 0, align 4
@GTPA_FLOW = common dso_local global i32 0, align 4
@GTPA_I_TEI = common dso_local global i32 0, align 4
@GTPA_O_TEI = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, %struct.pdp_ctx*)* @gtp_genl_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gtp_genl_fill_info(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, %struct.pdp_ctx* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pdp_ctx*, align 8
  %12 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.pdp_ctx* %4, %struct.pdp_ctx** %11, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i8* @genlmsg_put(%struct.sk_buff* %13, i32 %14, i32 %15, i32* @gtp_genl_family, i32 0, i32 %16)
  store i8* %17, i8** %12, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %101

21:                                               ; preds = %5
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = load i32, i32* @GTPA_VERSION, align 4
  %24 = load %struct.pdp_ctx*, %struct.pdp_ctx** %11, align 8
  %25 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @nla_put_u32(%struct.sk_buff* %22, i32 %23, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %21
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = load i32, i32* @GTPA_PEER_ADDRESS, align 4
  %32 = load %struct.pdp_ctx*, %struct.pdp_ctx** %11, align 8
  %33 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @nla_put_be32(%struct.sk_buff* %30, i32 %31, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %47, label %38

38:                                               ; preds = %29
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = load i32, i32* @GTPA_MS_ADDRESS, align 4
  %41 = load %struct.pdp_ctx*, %struct.pdp_ctx** %11, align 8
  %42 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @nla_put_be32(%struct.sk_buff* %39, i32 %40, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38, %29, %21
  br label %102

48:                                               ; preds = %38
  %49 = load %struct.pdp_ctx*, %struct.pdp_ctx** %11, align 8
  %50 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %97 [
    i32 129, label %52
    i32 128, label %75
  ]

52:                                               ; preds = %48
  %53 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %54 = load i32, i32* @GTPA_TID, align 4
  %55 = load %struct.pdp_ctx*, %struct.pdp_ctx** %11, align 8
  %56 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @GTPA_PAD, align 4
  %61 = call i32 @nla_put_u64_64bit(%struct.sk_buff* %53, i32 %54, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %73, label %63

63:                                               ; preds = %52
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = load i32, i32* @GTPA_FLOW, align 4
  %66 = load %struct.pdp_ctx*, %struct.pdp_ctx** %11, align 8
  %67 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @nla_put_u16(%struct.sk_buff* %64, i32 %65, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63, %52
  br label %102

74:                                               ; preds = %63
  br label %97

75:                                               ; preds = %48
  %76 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %77 = load i32, i32* @GTPA_I_TEI, align 4
  %78 = load %struct.pdp_ctx*, %struct.pdp_ctx** %11, align 8
  %79 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @nla_put_u32(%struct.sk_buff* %76, i32 %77, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %75
  %86 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %87 = load i32, i32* @GTPA_O_TEI, align 4
  %88 = load %struct.pdp_ctx*, %struct.pdp_ctx** %11, align 8
  %89 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @nla_put_u32(%struct.sk_buff* %86, i32 %87, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %85, %75
  br label %102

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %48, %96, %74
  %98 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 @genlmsg_end(%struct.sk_buff* %98, i8* %99)
  store i32 0, i32* %6, align 4
  br label %108

101:                                              ; preds = %20
  br label %102

102:                                              ; preds = %101, %95, %73, %47
  %103 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %104 = load i8*, i8** %12, align 8
  %105 = call i32 @genlmsg_cancel(%struct.sk_buff* %103, i8* %104)
  %106 = load i32, i32* @EMSGSIZE, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %6, align 4
  br label %108

108:                                              ; preds = %102, %97
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_be32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
