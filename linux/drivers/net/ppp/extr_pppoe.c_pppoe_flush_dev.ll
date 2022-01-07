; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pppoe.c_pppoe_flush_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pppoe.c_pppoe_flush_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pppoe_net = type { i32, %struct.pppox_sock** }
%struct.pppox_sock = type { %struct.net_device*, %struct.pppox_sock* }
%struct.sock = type { i32, i32 (%struct.sock*)* }

@PPPOE_HASH_SIZE = common dso_local global i32 0, align 4
@PPPOX_CONNECTED = common dso_local global i32 0, align 4
@PPPOX_BOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @pppoe_flush_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pppoe_flush_dev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.pppoe_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pppox_sock*, align 8
  %6 = alloca %struct.sock*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call i32 @dev_net(%struct.net_device* %7)
  %9 = call %struct.pppoe_net* @pppoe_pernet(i32 %8)
  store %struct.pppoe_net* %9, %struct.pppoe_net** %3, align 8
  %10 = load %struct.pppoe_net*, %struct.pppoe_net** %3, align 8
  %11 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %10, i32 0, i32 0
  %12 = call i32 @write_lock_bh(i32* %11)
  store i32 0, i32* %4, align 4
  br label %13

13:                                               ; preds = %106, %1
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PPPOE_HASH_SIZE, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %109

17:                                               ; preds = %13
  %18 = load %struct.pppoe_net*, %struct.pppoe_net** %3, align 8
  %19 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %18, i32 0, i32 1
  %20 = load %struct.pppox_sock**, %struct.pppox_sock*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pppox_sock*, %struct.pppox_sock** %20, i64 %22
  %24 = load %struct.pppox_sock*, %struct.pppox_sock** %23, align 8
  store %struct.pppox_sock* %24, %struct.pppox_sock** %5, align 8
  br label %25

25:                                               ; preds = %84, %17
  %26 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %27 = icmp ne %struct.pppox_sock* %26, null
  br i1 %27, label %28, label %105

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %40, %28
  %30 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %31 = icmp ne %struct.pppox_sock* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %34 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %33, i32 0, i32 0
  %35 = load %struct.net_device*, %struct.net_device** %34, align 8
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = icmp ne %struct.net_device* %35, %36
  br label %38

38:                                               ; preds = %32, %29
  %39 = phi i1 [ false, %29 ], [ %37, %32 ]
  br i1 %39, label %40, label %44

40:                                               ; preds = %38
  %41 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %42 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %41, i32 0, i32 1
  %43 = load %struct.pppox_sock*, %struct.pppox_sock** %42, align 8
  store %struct.pppox_sock* %43, %struct.pppox_sock** %5, align 8
  br label %29

44:                                               ; preds = %38
  %45 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %46 = icmp ne %struct.pppox_sock* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  br label %105

48:                                               ; preds = %44
  %49 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %50 = call %struct.sock* @sk_pppox(%struct.pppox_sock* %49)
  store %struct.sock* %50, %struct.sock** %6, align 8
  %51 = load %struct.sock*, %struct.sock** %6, align 8
  %52 = call i32 @sock_hold(%struct.sock* %51)
  %53 = load %struct.pppoe_net*, %struct.pppoe_net** %3, align 8
  %54 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %53, i32 0, i32 0
  %55 = call i32 @write_unlock_bh(i32* %54)
  %56 = load %struct.sock*, %struct.sock** %6, align 8
  %57 = call i32 @lock_sock(%struct.sock* %56)
  %58 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %59 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %58, i32 0, i32 0
  %60 = load %struct.net_device*, %struct.net_device** %59, align 8
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = icmp eq %struct.net_device* %60, %61
  br i1 %62, label %63, label %84

63:                                               ; preds = %48
  %64 = load %struct.sock*, %struct.sock** %6, align 8
  %65 = getelementptr inbounds %struct.sock, %struct.sock* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PPPOX_CONNECTED, align 4
  %68 = load i32, i32* @PPPOX_BOUND, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %63
  %73 = load %struct.sock*, %struct.sock** %6, align 8
  %74 = call i32 @pppox_unbind_sock(%struct.sock* %73)
  %75 = load %struct.sock*, %struct.sock** %6, align 8
  %76 = getelementptr inbounds %struct.sock, %struct.sock* %75, i32 0, i32 1
  %77 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %76, align 8
  %78 = load %struct.sock*, %struct.sock** %6, align 8
  %79 = call i32 %77(%struct.sock* %78)
  %80 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %81 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %80, i32 0, i32 0
  store %struct.net_device* null, %struct.net_device** %81, align 8
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = call i32 @dev_put(%struct.net_device* %82)
  br label %84

84:                                               ; preds = %72, %63, %48
  %85 = load %struct.sock*, %struct.sock** %6, align 8
  %86 = call i32 @release_sock(%struct.sock* %85)
  %87 = load %struct.sock*, %struct.sock** %6, align 8
  %88 = call i32 @sock_put(%struct.sock* %87)
  %89 = load %struct.net_device*, %struct.net_device** %2, align 8
  %90 = call i32 @dev_net(%struct.net_device* %89)
  %91 = call %struct.pppoe_net* @pppoe_pernet(i32 %90)
  %92 = icmp eq %struct.pppoe_net* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 @BUG_ON(i32 %93)
  %95 = load %struct.pppoe_net*, %struct.pppoe_net** %3, align 8
  %96 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %95, i32 0, i32 0
  %97 = call i32 @write_lock_bh(i32* %96)
  %98 = load %struct.pppoe_net*, %struct.pppoe_net** %3, align 8
  %99 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %98, i32 0, i32 1
  %100 = load %struct.pppox_sock**, %struct.pppox_sock*** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.pppox_sock*, %struct.pppox_sock** %100, i64 %102
  %104 = load %struct.pppox_sock*, %struct.pppox_sock** %103, align 8
  store %struct.pppox_sock* %104, %struct.pppox_sock** %5, align 8
  br label %25

105:                                              ; preds = %47, %25
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %13

109:                                              ; preds = %13
  %110 = load %struct.pppoe_net*, %struct.pppoe_net** %3, align 8
  %111 = getelementptr inbounds %struct.pppoe_net, %struct.pppoe_net* %110, i32 0, i32 0
  %112 = call i32 @write_unlock_bh(i32* %111)
  ret void
}

declare dso_local %struct.pppoe_net* @pppoe_pernet(i32) #1

declare dso_local i32 @dev_net(%struct.net_device*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.sock* @sk_pppox(%struct.pppox_sock*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @pppox_unbind_sock(%struct.sock*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
