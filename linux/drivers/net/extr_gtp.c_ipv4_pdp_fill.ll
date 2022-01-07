; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_ipv4_pdp_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_ipv4_pdp_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdp_ctx = type { i32, %struct.TYPE_10__, %struct.TYPE_7__, %struct.TYPE_6__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.genl_info = type { i32* }

@GTPA_VERSION = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@GTPA_PEER_ADDRESS = common dso_local global i64 0, align 8
@GTPA_MS_ADDRESS = common dso_local global i64 0, align 8
@GTPA_TID = common dso_local global i64 0, align 8
@GTPA_FLOW = common dso_local global i64 0, align 8
@GTPA_I_TEI = common dso_local global i64 0, align 8
@GTPA_O_TEI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pdp_ctx*, %struct.genl_info*)* @ipv4_pdp_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv4_pdp_fill(%struct.pdp_ctx* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.pdp_ctx*, align 8
  %4 = alloca %struct.genl_info*, align 8
  store %struct.pdp_ctx* %0, %struct.pdp_ctx** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %5 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %6 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @GTPA_VERSION, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = call i8* @nla_get_u32(i32 %10)
  %12 = ptrtoint i8* %11 to i32
  %13 = load %struct.pdp_ctx*, %struct.pdp_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @AF_INET, align 4
  %16 = load %struct.pdp_ctx*, %struct.pdp_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @GTPA_PEER_ADDRESS, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @nla_get_be32(i32 %23)
  %25 = load %struct.pdp_ctx*, %struct.pdp_ctx** %3, align 8
  %26 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  %28 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %29 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @GTPA_MS_ADDRESS, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @nla_get_be32(i32 %33)
  %35 = load %struct.pdp_ctx*, %struct.pdp_ctx** %3, align 8
  %36 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  %38 = load %struct.pdp_ctx*, %struct.pdp_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %87 [
    i32 129, label %41
    i32 128, label %64
  ]

41:                                               ; preds = %2
  %42 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %43 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @GTPA_TID, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nla_get_u64(i32 %47)
  %49 = load %struct.pdp_ctx*, %struct.pdp_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  %53 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %54 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @GTPA_FLOW, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @nla_get_u16(i32 %58)
  %60 = load %struct.pdp_ctx*, %struct.pdp_ctx** %3, align 8
  %61 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 8
  br label %88

64:                                               ; preds = %2
  %65 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %66 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @GTPA_I_TEI, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @nla_get_u32(i32 %70)
  %72 = load %struct.pdp_ctx*, %struct.pdp_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  store i8* %71, i8** %75, align 8
  %76 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %77 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @GTPA_O_TEI, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @nla_get_u32(i32 %81)
  %83 = load %struct.pdp_ctx*, %struct.pdp_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  store i8* %82, i8** %86, align 8
  br label %88

87:                                               ; preds = %2
  br label %88

88:                                               ; preds = %87, %64, %41
  ret void
}

declare dso_local i8* @nla_get_u32(i32) #1

declare dso_local i8* @nla_get_be32(i32) #1

declare dso_local i32 @nla_get_u64(i32) #1

declare dso_local i32 @nla_get_u16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
