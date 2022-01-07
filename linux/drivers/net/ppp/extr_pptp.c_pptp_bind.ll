; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pptp.c_pptp_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pptp.c_pptp_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_pppox = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pppox_sock = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PPPOX_DEAD = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@PPPOX_BOUND = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @pptp_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pptp_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sockaddr_pppox*, align 8
  %10 = alloca %struct.pppox_sock*, align 8
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %8, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %16 = bitcast %struct.sockaddr* %15 to %struct.sockaddr_pppox*
  store %struct.sockaddr_pppox* %16, %struct.sockaddr_pppox** %9, align 8
  %17 = load %struct.sock*, %struct.sock** %8, align 8
  %18 = call %struct.pppox_sock* @pppox_sk(%struct.sock* %17)
  store %struct.pppox_sock* %18, %struct.pppox_sock** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = icmp ult i64 %20, 4
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %68

25:                                               ; preds = %3
  %26 = load %struct.sock*, %struct.sock** %8, align 8
  %27 = call i32 @lock_sock(%struct.sock* %26)
  %28 = load %struct.sock*, %struct.sock** %8, align 8
  %29 = getelementptr inbounds %struct.sock, %struct.sock* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PPPOX_DEAD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @EALREADY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %11, align 4
  br label %64

37:                                               ; preds = %25
  %38 = load %struct.sock*, %struct.sock** %8, align 8
  %39 = getelementptr inbounds %struct.sock, %struct.sock* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PPPOX_BOUND, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  br label %64

47:                                               ; preds = %37
  %48 = load %struct.pppox_sock*, %struct.pppox_sock** %10, align 8
  %49 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %9, align 8
  %50 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i64 @add_chan(%struct.pppox_sock* %48, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %47
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %11, align 4
  br label %63

57:                                               ; preds = %47
  %58 = load i32, i32* @PPPOX_BOUND, align 4
  %59 = load %struct.sock*, %struct.sock** %8, align 8
  %60 = getelementptr inbounds %struct.sock, %struct.sock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %54
  br label %64

64:                                               ; preds = %63, %44, %34
  %65 = load %struct.sock*, %struct.sock** %8, align 8
  %66 = call i32 @release_sock(%struct.sock* %65)
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %22
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local %struct.pppox_sock* @pppox_sk(%struct.sock*) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @add_chan(%struct.pppox_sock*, i32*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
