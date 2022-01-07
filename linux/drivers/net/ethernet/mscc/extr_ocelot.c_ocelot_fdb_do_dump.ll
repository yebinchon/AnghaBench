; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_fdb_do_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_fdb_do_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot_mact_entry = type { i64, i32 }
%struct.ocelot_dump_ctx = type { i64, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.ndmsg = type { i32, i32, i64, i32, i64, i64, i32 }

@RTM_NEWNEIGH = common dso_local global i32 0, align 4
@NLM_F_MULTI = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@AF_BRIDGE = common dso_local global i32 0, align 4
@NTF_SELF = common dso_local global i32 0, align 4
@NUD_REACHABLE = common dso_local global i32 0, align 4
@NDA_LLADDR = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@NDA_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocelot_mact_entry*, %struct.ocelot_dump_ctx*)* @ocelot_fdb_do_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_fdb_do_dump(%struct.ocelot_mact_entry* %0, %struct.ocelot_dump_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocelot_mact_entry*, align 8
  %5 = alloca %struct.ocelot_dump_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca %struct.ndmsg*, align 8
  store %struct.ocelot_mact_entry* %0, %struct.ocelot_mact_entry** %4, align 8
  store %struct.ocelot_dump_ctx* %1, %struct.ocelot_dump_ctx** %5, align 8
  %11 = load %struct.ocelot_dump_ctx*, %struct.ocelot_dump_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.ocelot_dump_ctx, %struct.ocelot_dump_ctx* %11, i32 0, i32 3
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @NETLINK_CB(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ocelot_dump_ctx*, %struct.ocelot_dump_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.ocelot_dump_ctx, %struct.ocelot_dump_ctx* %20, i32 0, i32 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.ocelot_dump_ctx*, %struct.ocelot_dump_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.ocelot_dump_ctx, %struct.ocelot_dump_ctx* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ocelot_dump_ctx*, %struct.ocelot_dump_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.ocelot_dump_ctx, %struct.ocelot_dump_ctx* %30, i32 0, i32 3
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %29, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %2
  br label %111

39:                                               ; preds = %2
  %40 = load %struct.ocelot_dump_ctx*, %struct.ocelot_dump_ctx** %5, align 8
  %41 = getelementptr inbounds %struct.ocelot_dump_ctx, %struct.ocelot_dump_ctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @RTM_NEWNEIGH, align 4
  %46 = load i32, i32* @NLM_F_MULTI, align 4
  %47 = call %struct.nlmsghdr* @nlmsg_put(i32 %42, i32 %43, i32 %44, i32 %45, i32 48, i32 %46)
  store %struct.nlmsghdr* %47, %struct.nlmsghdr** %9, align 8
  %48 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %49 = icmp ne %struct.nlmsghdr* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %39
  %51 = load i32, i32* @EMSGSIZE, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %124

53:                                               ; preds = %39
  %54 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %55 = call %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr* %54)
  store %struct.ndmsg* %55, %struct.ndmsg** %10, align 8
  %56 = load i32, i32* @AF_BRIDGE, align 4
  %57 = load %struct.ndmsg*, %struct.ndmsg** %10, align 8
  %58 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 8
  %59 = load %struct.ndmsg*, %struct.ndmsg** %10, align 8
  %60 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %59, i32 0, i32 5
  store i64 0, i64* %60, align 8
  %61 = load %struct.ndmsg*, %struct.ndmsg** %10, align 8
  %62 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @NTF_SELF, align 4
  %64 = load %struct.ndmsg*, %struct.ndmsg** %10, align 8
  %65 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ndmsg*, %struct.ndmsg** %10, align 8
  %67 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load %struct.ocelot_dump_ctx*, %struct.ocelot_dump_ctx** %5, align 8
  %69 = getelementptr inbounds %struct.ocelot_dump_ctx, %struct.ocelot_dump_ctx* %68, i32 0, i32 2
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ndmsg*, %struct.ndmsg** %10, align 8
  %74 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @NUD_REACHABLE, align 4
  %76 = load %struct.ndmsg*, %struct.ndmsg** %10, align 8
  %77 = getelementptr inbounds %struct.ndmsg, %struct.ndmsg* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ocelot_dump_ctx*, %struct.ocelot_dump_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.ocelot_dump_ctx, %struct.ocelot_dump_ctx* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @NDA_LLADDR, align 4
  %82 = load i32, i32* @ETH_ALEN, align 4
  %83 = load %struct.ocelot_mact_entry*, %struct.ocelot_mact_entry** %4, align 8
  %84 = getelementptr inbounds %struct.ocelot_mact_entry, %struct.ocelot_mact_entry* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @nla_put(i32 %80, i32 %81, i32 %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %53
  br label %116

89:                                               ; preds = %53
  %90 = load %struct.ocelot_mact_entry*, %struct.ocelot_mact_entry** %4, align 8
  %91 = getelementptr inbounds %struct.ocelot_mact_entry, %struct.ocelot_mact_entry* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %89
  %95 = load %struct.ocelot_dump_ctx*, %struct.ocelot_dump_ctx** %5, align 8
  %96 = getelementptr inbounds %struct.ocelot_dump_ctx, %struct.ocelot_dump_ctx* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @NDA_VLAN, align 4
  %99 = load %struct.ocelot_mact_entry*, %struct.ocelot_mact_entry** %4, align 8
  %100 = getelementptr inbounds %struct.ocelot_mact_entry, %struct.ocelot_mact_entry* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @nla_put_u16(i32 %97, i32 %98, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %94
  br label %116

105:                                              ; preds = %94, %89
  %106 = load %struct.ocelot_dump_ctx*, %struct.ocelot_dump_ctx** %5, align 8
  %107 = getelementptr inbounds %struct.ocelot_dump_ctx, %struct.ocelot_dump_ctx* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %110 = call i32 @nlmsg_end(i32 %108, %struct.nlmsghdr* %109)
  br label %111

111:                                              ; preds = %105, %38
  %112 = load %struct.ocelot_dump_ctx*, %struct.ocelot_dump_ctx** %5, align 8
  %113 = getelementptr inbounds %struct.ocelot_dump_ctx, %struct.ocelot_dump_ctx* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %113, align 8
  store i32 0, i32* %3, align 4
  br label %124

116:                                              ; preds = %104, %88
  %117 = load %struct.ocelot_dump_ctx*, %struct.ocelot_dump_ctx** %5, align 8
  %118 = getelementptr inbounds %struct.ocelot_dump_ctx, %struct.ocelot_dump_ctx* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %121 = call i32 @nlmsg_cancel(i32 %119, %struct.nlmsghdr* %120)
  %122 = load i32, i32* @EMSGSIZE, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %116, %111, %50
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local %struct.nlmsghdr* @nlmsg_put(i32, i32, i32, i32, i32, i32) #1

declare dso_local %struct.ndmsg* @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i64 @nla_put(i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_u16(i32, i32, i64) #1

declare dso_local i32 @nlmsg_end(i32, %struct.nlmsghdr*) #1

declare dso_local i32 @nlmsg_cancel(i32, %struct.nlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
