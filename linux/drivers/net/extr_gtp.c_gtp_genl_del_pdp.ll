; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_genl_del_pdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_genl_del_pdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32* }
%struct.pdp_ctx = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GTPA_VERSION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GTP_V0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"GTPv0-U: deleting tunnel id = %llx (pdp %p)\0A\00", align 1
@GTP_V1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"GTPv1-U: deleting tunnel id = %x/%x (pdp %p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @gtp_genl_del_pdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gtp_genl_del_pdp(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.pdp_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %9 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load i64, i64* @GTPA_VERSION, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %82

18:                                               ; preds = %2
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @sock_net(i32 %22)
  %24 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %25 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call %struct.pdp_ctx* @gtp_find_pdp(i32 %23, i32* %26)
  store %struct.pdp_ctx* %27, %struct.pdp_ctx** %6, align 8
  %28 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %29 = call i64 @IS_ERR(%struct.pdp_ctx* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %18
  %32 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %33 = call i32 @PTR_ERR(%struct.pdp_ctx* %32)
  store i32 %33, i32* %7, align 4
  br label %79

34:                                               ; preds = %18
  %35 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %36 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @GTP_V0, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %42 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %50 = call i32 (i32, i8*, i32, %struct.pdp_ctx*, ...) @netdev_dbg(i32 %43, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %48, %struct.pdp_ctx* %49)
  br label %76

51:                                               ; preds = %34
  %52 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %53 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @GTP_V1, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %75

57:                                               ; preds = %51
  %58 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %62 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %67 = getelementptr inbounds %struct.pdp_ctx, %struct.pdp_ctx* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to %struct.pdp_ctx*
  %73 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %74 = call i32 (i32, i8*, i32, %struct.pdp_ctx*, ...) @netdev_dbg(i32 %60, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %65, %struct.pdp_ctx* %72, %struct.pdp_ctx* %73)
  br label %75

75:                                               ; preds = %57, %51
  br label %76

76:                                               ; preds = %75, %40
  %77 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %78 = call i32 @pdp_context_delete(%struct.pdp_ctx* %77)
  br label %79

79:                                               ; preds = %76, %31
  %80 = call i32 (...) @rcu_read_unlock()
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %15
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.pdp_ctx* @gtp_find_pdp(i32, i32*) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i64 @IS_ERR(%struct.pdp_ctx*) #1

declare dso_local i32 @PTR_ERR(%struct.pdp_ctx*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, %struct.pdp_ctx*, ...) #1

declare dso_local i32 @pdp_context_delete(%struct.pdp_ctx*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
