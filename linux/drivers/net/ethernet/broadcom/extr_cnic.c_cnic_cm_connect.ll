; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_cm_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_cm_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_sock = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.cnic_local* }
%struct.cnic_local = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cnic_sockaddr = type { i32 }

@CNIC_DRV_STATE_NO_ISCSI = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SK_F_CONNECT_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_sock*, %struct.cnic_sockaddr*)* @cnic_cm_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_cm_connect(%struct.cnic_sock* %0, %struct.cnic_sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cnic_sock*, align 8
  %5 = alloca %struct.cnic_sockaddr*, align 8
  %6 = alloca %struct.cnic_local*, align 8
  %7 = alloca i32, align 4
  store %struct.cnic_sock* %0, %struct.cnic_sock** %4, align 8
  store %struct.cnic_sockaddr* %1, %struct.cnic_sockaddr** %5, align 8
  %8 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %9 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  store %struct.cnic_local* %12, %struct.cnic_local** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %14 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CNIC_DRV_STATE_NO_ISCSI, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %63

24:                                               ; preds = %2
  %25 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %26 = call i32 @cnic_in_use(%struct.cnic_sock* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %63

31:                                               ; preds = %24
  %32 = load i32, i32* @SK_F_CONNECT_START, align 4
  %33 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %34 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %33, i32 0, i32 0
  %35 = call i64 @test_and_set_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %63

40:                                               ; preds = %31
  %41 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %42 = call i32 @cnic_init_csk_state(%struct.cnic_sock* %41)
  %43 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %44 = load %struct.cnic_sockaddr*, %struct.cnic_sockaddr** %5, align 8
  %45 = call i32 @cnic_get_route(%struct.cnic_sock* %43, %struct.cnic_sockaddr* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %57

49:                                               ; preds = %40
  %50 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %51 = load %struct.cnic_sockaddr*, %struct.cnic_sockaddr** %5, align 8
  %52 = call i32 @cnic_resolve_addr(%struct.cnic_sock* %50, %struct.cnic_sockaddr* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %63

56:                                               ; preds = %49
  br label %57

57:                                               ; preds = %56, %48
  %58 = load i32, i32* @SK_F_CONNECT_START, align 4
  %59 = load %struct.cnic_sock*, %struct.cnic_sock** %4, align 8
  %60 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %59, i32 0, i32 0
  %61 = call i32 @clear_bit(i32 %58, i32* %60)
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %55, %37, %28, %21
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @cnic_in_use(%struct.cnic_sock*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @cnic_init_csk_state(%struct.cnic_sock*) #1

declare dso_local i32 @cnic_get_route(%struct.cnic_sock*, %struct.cnic_sockaddr*) #1

declare dso_local i32 @cnic_resolve_addr(%struct.cnic_sock*, %struct.cnic_sockaddr*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
