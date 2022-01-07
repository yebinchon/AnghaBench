; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_host = type { i32, i32, i32, %struct.mmc_command* }
%struct.mmc_command = type { i32, %struct.mmc_data*, i64 }
%struct.mmc_data = type { i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @meson_mmc_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_mmc_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.meson_host*, align 8
  %7 = alloca %struct.mmc_command*, align 8
  %8 = alloca %struct.mmc_command*, align 8
  %9 = alloca %struct.mmc_data*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.meson_host*
  store %struct.meson_host* %12, %struct.meson_host** %6, align 8
  %13 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %14 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %13, i32 0, i32 3
  %15 = load %struct.mmc_command*, %struct.mmc_command** %14, align 8
  store %struct.mmc_command* %15, %struct.mmc_command** %8, align 8
  %16 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %17 = icmp ne %struct.mmc_command* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %94

24:                                               ; preds = %2
  %25 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %26 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %31 = call i32 @meson_mmc_wait_desc_stop(%struct.meson_host* %30)
  %32 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %33 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %36 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @meson_mmc_request_done(i32 %34, i32 %37)
  %39 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %39, i32* %3, align 4
  br label %94

40:                                               ; preds = %24
  %41 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %42 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %41, i32 0, i32 1
  %43 = load %struct.mmc_data*, %struct.mmc_data** %42, align 8
  store %struct.mmc_data* %43, %struct.mmc_data** %9, align 8
  %44 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %45 = call i64 @meson_mmc_bounce_buf_read(%struct.mmc_data* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %40
  %48 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %49 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %52 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul i32 %50, %53
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %57 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ugt i32 %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i64 @WARN_ON(i32 %60)
  %62 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %63 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  %66 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %69 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @sg_copy_from_buffer(i32 %64, i32 %67, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %47, %40
  %74 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %75 = call %struct.mmc_command* @meson_mmc_get_next_command(%struct.mmc_command* %74)
  store %struct.mmc_command* %75, %struct.mmc_command** %7, align 8
  %76 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %77 = icmp ne %struct.mmc_command* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %80 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %83 = call i32 @meson_mmc_start_cmd(i32 %81, %struct.mmc_command* %82)
  br label %92

84:                                               ; preds = %73
  %85 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %86 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mmc_command*, %struct.mmc_command** %8, align 8
  %89 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @meson_mmc_request_done(i32 %87, i32 %90)
  br label %92

92:                                               ; preds = %84, %78
  %93 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %92, %29, %22
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @meson_mmc_wait_desc_stop(%struct.meson_host*) #1

declare dso_local i32 @meson_mmc_request_done(i32, i32) #1

declare dso_local i64 @meson_mmc_bounce_buf_read(%struct.mmc_data*) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32, i32) #1

declare dso_local %struct.mmc_command* @meson_mmc_get_next_command(%struct.mmc_command*) #1

declare dso_local i32 @meson_mmc_start_cmd(i32, %struct.mmc_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
