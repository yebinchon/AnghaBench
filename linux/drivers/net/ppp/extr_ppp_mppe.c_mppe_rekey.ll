; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_mppe.c_mppe_rekey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_mppe.c_mppe_rekey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_mppe_state = type { i32*, i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppp_mppe_state*, i32)* @mppe_rekey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mppe_rekey(%struct.ppp_mppe_state* %0, i32 %1) #0 {
  %3 = alloca %struct.ppp_mppe_state*, align 8
  %4 = alloca i32, align 4
  store %struct.ppp_mppe_state* %0, %struct.ppp_mppe_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %6 = call i32 @get_new_key_from_sha(%struct.ppp_mppe_state* %5)
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %2
  %10 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %11 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %10, i32 0, i32 3
  %12 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %13 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %16 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @arc4_setkey(i32* %11, i32* %14, i32 %17)
  %19 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %20 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %19, i32 0, i32 3
  %21 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %22 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %25 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %28 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @arc4_crypt(i32* %20, i32* %23, i32* %26, i32 %29)
  br label %42

31:                                               ; preds = %2
  %32 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %33 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %36 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %39 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @memcpy(i32* %34, i32* %37, i32 %40)
  br label %42

42:                                               ; preds = %31, %9
  %43 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %44 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 8
  br i1 %46, label %47, label %60

47:                                               ; preds = %42
  %48 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %49 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 209, i32* %51, align 4
  %52 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %53 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 38, i32* %55, align 4
  %56 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %57 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 158, i32* %59, align 4
  br label %60

60:                                               ; preds = %47, %42
  %61 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %62 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %61, i32 0, i32 3
  %63 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %64 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.ppp_mppe_state*, %struct.ppp_mppe_state** %3, align 8
  %67 = getelementptr inbounds %struct.ppp_mppe_state, %struct.ppp_mppe_state* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @arc4_setkey(i32* %62, i32* %65, i32 %68)
  ret void
}

declare dso_local i32 @get_new_key_from_sha(%struct.ppp_mppe_state*) #1

declare dso_local i32 @arc4_setkey(i32*, i32*, i32) #1

declare dso_local i32 @arc4_crypt(i32*, i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
