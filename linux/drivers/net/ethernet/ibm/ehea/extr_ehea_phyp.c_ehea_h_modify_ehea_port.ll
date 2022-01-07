; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_phyp.c_ehea_h_modify_ehea_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_phyp.c_ehea_h_modify_ehea_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLPAR_HCALL9_BUFSIZE = common dso_local global i32 0, align 4
@H_MEHEAPORT_CAT = common dso_local global i32 0, align 4
@H_MEHEAPORT_PN = common dso_local global i32 0, align 4
@H_MODIFY_HEA_PORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ehea_h_modify_ehea_port(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %16 = load i32, i32* @PLPAR_HCALL9_BUFSIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  store i32 0, i32* %14, align 4
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @__pa(i8* %20)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* @H_MEHEAPORT_CAT, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @EHEA_BMASK_SET(i32 %22, i32 %23)
  %25 = load i32, i32* @H_MEHEAPORT_PN, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @EHEA_BMASK_SET(i32 %25, i32 %26)
  %28 = or i32 %24, %27
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* @H_MODIFY_HEA_PORT, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @ehea_plpar_hcall9(i32 %29, i64* %19, i32 %30, i32 %31, i32 %32, i32 %33, i32 %34, i32 0, i32 0, i32 0, i32 0)
  %36 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %36)
  ret i32 %35
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @__pa(i8*) #2

declare dso_local i32 @EHEA_BMASK_SET(i32, i32) #2

declare dso_local i32 @ehea_plpar_hcall9(i32, i64*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
