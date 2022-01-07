; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_mppe.c_mppe_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_mppe.c_mppe_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_mppe_state = type { %struct.ppp_mppe_state*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mppe_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mppe_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ppp_mppe_state*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ppp_mppe_state*
  store %struct.ppp_mppe_state* %5, %struct.ppp_mppe_state** %3, align 8
  %6 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %7 = icmp ne %struct.ppp_mppe_state* %6, null
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %10 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @kfree(i32 %11)
  %13 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %14 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %13, i32 0, i32 0
  %15 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %14, align 8
  %16 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @crypto_free_shash(i32 %17)
  %19 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %20 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %19, i32 0, i32 0
  %21 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %20, align 8
  %22 = call i32 @kzfree(%struct.ppp_mppe_state* %21)
  %23 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %24 = call i32 @kzfree(%struct.ppp_mppe_state* %23)
  br label %25

25:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @crypto_free_shash(i32) #1

declare dso_local i32 @kzfree(%struct.ppp_mppe_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
