; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_build_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_build_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genevehdr = type { i32, i32, i32, i32, i64, i32, i32, i64, i32 }
%struct.ip_tunnel_info = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@GENEVE_VER = common dso_local global i32 0, align 4
@TUNNEL_OAM = common dso_local global i32 0, align 4
@TUNNEL_CRIT_OPT = common dso_local global i32 0, align 4
@ETH_P_TEB = common dso_local global i32 0, align 4
@TUNNEL_GENEVE_OPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.genevehdr*, %struct.ip_tunnel_info*)* @geneve_build_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @geneve_build_header(%struct.genevehdr* %0, %struct.ip_tunnel_info* %1) #0 {
  %3 = alloca %struct.genevehdr*, align 8
  %4 = alloca %struct.ip_tunnel_info*, align 8
  store %struct.genevehdr* %0, %struct.genevehdr** %3, align 8
  store %struct.ip_tunnel_info* %1, %struct.ip_tunnel_info** %4, align 8
  %5 = load i32, i32* @GENEVE_VER, align 4
  %6 = load %struct.genevehdr*, %struct.genevehdr** %3, align 8
  %7 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %6, i32 0, i32 8
  store i32 %5, i32* %7, align 8
  %8 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %4, align 8
  %9 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sdiv i32 %10, 4
  %12 = load %struct.genevehdr*, %struct.genevehdr** %3, align 8
  %13 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %4, align 8
  %15 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @TUNNEL_OAM, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = load %struct.genevehdr*, %struct.genevehdr** %3, align 8
  %25 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %4, align 8
  %27 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TUNNEL_CRIT_OPT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load %struct.genevehdr*, %struct.genevehdr** %3, align 8
  %37 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.genevehdr*, %struct.genevehdr** %3, align 8
  %39 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %38, i32 0, i32 7
  store i64 0, i64* %39, align 8
  %40 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %4, align 8
  %41 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.genevehdr*, %struct.genevehdr** %3, align 8
  %45 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @tunnel_id_to_vni(i32 %43, i32 %46)
  %48 = load i32, i32* @ETH_P_TEB, align 4
  %49 = call i32 @htons(i32 %48)
  %50 = load %struct.genevehdr*, %struct.genevehdr** %3, align 8
  %51 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.genevehdr*, %struct.genevehdr** %3, align 8
  %53 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %52, i32 0, i32 4
  store i64 0, i64* %53, align 8
  %54 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %4, align 8
  %55 = getelementptr inbounds %struct.ip_tunnel_info, %struct.ip_tunnel_info* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TUNNEL_GENEVE_OPT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %2
  %62 = load %struct.genevehdr*, %struct.genevehdr** %3, align 8
  %63 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ip_tunnel_info*, %struct.ip_tunnel_info** %4, align 8
  %66 = call i32 @ip_tunnel_info_opts_get(i32 %64, %struct.ip_tunnel_info* %65)
  br label %67

67:                                               ; preds = %61, %2
  ret void
}

declare dso_local i32 @tunnel_id_to_vni(i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @ip_tunnel_info_opts_get(i32, %struct.ip_tunnel_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
