; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_chr_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_chr_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.tun_file* }
%struct.tun_file = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sock* }
%struct.sock = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.tun_struct = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@EPOLLERR = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"tun_chr_poll\0A\00", align 1
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@NETREG_REGISTERED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @tun_chr_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tun_chr_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tun_file*, align 8
  %7 = alloca %struct.tun_struct*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load %struct.tun_file*, %struct.tun_file** %11, align 8
  store %struct.tun_file* %12, %struct.tun_file** %6, align 8
  %13 = load %struct.tun_file*, %struct.tun_file** %6, align 8
  %14 = call %struct.tun_struct* @tun_get(%struct.tun_file* %13)
  store %struct.tun_struct* %14, %struct.tun_struct** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %16 = icmp ne %struct.tun_struct* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EPOLLERR, align 4
  store i32 %18, i32* %3, align 4
  br label %80

19:                                               ; preds = %2
  %20 = load %struct.tun_file*, %struct.tun_file** %6, align 8
  %21 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.sock*, %struct.sock** %22, align 8
  store %struct.sock* %23, %struct.sock** %8, align 8
  %24 = load i32, i32* @KERN_INFO, align 4
  %25 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %26 = call i32 @tun_debug(i32 %24, %struct.tun_struct* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.file*, %struct.file** %4, align 8
  %28 = load %struct.sock*, %struct.sock** %8, align 8
  %29 = call i32 @sk_sleep(%struct.sock* %28)
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @poll_wait(%struct.file* %27, i32 %29, i32* %30)
  %32 = load %struct.tun_file*, %struct.tun_file** %6, align 8
  %33 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %32, i32 0, i32 0
  %34 = call i32 @ptr_ring_empty(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %19
  %37 = load i32, i32* @EPOLLIN, align 4
  %38 = load i32, i32* @EPOLLRDNORM, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %36, %19
  %43 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %44 = load %struct.tun_file*, %struct.tun_file** %6, align 8
  %45 = call i64 @tun_sock_writeable(%struct.tun_struct* %43, %struct.tun_file* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %60, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @SOCKWQ_ASYNC_NOSPACE, align 4
  %49 = load %struct.sock*, %struct.sock** %8, align 8
  %50 = getelementptr inbounds %struct.sock, %struct.sock* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = call i32 @test_and_set_bit(i32 %48, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %47
  %56 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %57 = load %struct.tun_file*, %struct.tun_file** %6, align 8
  %58 = call i64 @tun_sock_writeable(%struct.tun_struct* %56, %struct.tun_file* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55, %42
  %61 = load i32, i32* @EPOLLOUT, align 4
  %62 = load i32, i32* @EPOLLWRNORM, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %60, %55, %47
  %67 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %68 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @NETREG_REGISTERED, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* @EPOLLERR, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %74, %66
  %77 = load %struct.tun_struct*, %struct.tun_struct** %7, align 8
  %78 = call i32 @tun_put(%struct.tun_struct* %77)
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %76, %17
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.tun_struct* @tun_get(%struct.tun_file*) #1

declare dso_local i32 @tun_debug(i32, %struct.tun_struct*, i8*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @ptr_ring_empty(i32*) #1

declare dso_local i64 @tun_sock_writeable(%struct.tun_struct*, %struct.tun_file*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @tun_put(%struct.tun_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
