; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_not_capable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_not_capable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i32, i32, i32 }
%struct.cred = type { i32 }
%struct.net = type { i32 }

@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tun_struct*)* @tun_not_capable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_not_capable(%struct.tun_struct* %0) #0 {
  %2 = alloca %struct.tun_struct*, align 8
  %3 = alloca %struct.cred*, align 8
  %4 = alloca %struct.net*, align 8
  store %struct.tun_struct* %0, %struct.tun_struct** %2, align 8
  %5 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %5, %struct.cred** %3, align 8
  %6 = load %struct.tun_struct*, %struct.tun_struct** %2, align 8
  %7 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.net* @dev_net(i32 %8)
  store %struct.net* %9, %struct.net** %4, align 8
  %10 = load %struct.tun_struct*, %struct.tun_struct** %2, align 8
  %11 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @uid_valid(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.cred*, %struct.cred** %3, align 8
  %17 = getelementptr inbounds %struct.cred, %struct.cred* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tun_struct*, %struct.tun_struct** %2, align 8
  %20 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @uid_eq(i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %15, %1
  %25 = load %struct.tun_struct*, %struct.tun_struct** %2, align 8
  %26 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @gid_valid(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.tun_struct*, %struct.tun_struct** %2, align 8
  %32 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @in_egroup_p(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %30, %15
  %37 = load %struct.net*, %struct.net** %4, align 8
  %38 = getelementptr inbounds %struct.net, %struct.net* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CAP_NET_ADMIN, align 4
  %41 = call i32 @ns_capable(i32 %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %36, %30, %24
  %45 = phi i1 [ false, %30 ], [ false, %24 ], [ %43, %36 ]
  %46 = zext i1 %45 to i32
  ret i32 %46
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local %struct.net* @dev_net(i32) #1

declare dso_local i64 @uid_valid(i32) #1

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i64 @gid_valid(i32) #1

declare dso_local i32 @in_egroup_p(i32) #1

declare dso_local i32 @ns_capable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
