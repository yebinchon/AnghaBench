; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DLINK_EEPROM = common dso_local global i32 0, align 4
@EE_READ_CMD = common dso_local global i32 0, align 4
@EE_EEP = common dso_local global i16 0, align 2
@EE_CS = common dso_local global i16 0, align 2
@EE_DO = common dso_local global i16 0, align 2
@EE_CK = common dso_local global i16 0, align 2
@EE_DI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_eeprom(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @DLINK_EEPROM, align 4
  %12 = add i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @EE_READ_CMD, align 4
  %15 = shl i32 %14, 8
  %16 = or i32 %13, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @outb(i16 signext 0, i32 %17)
  %19 = load i16, i16* @EE_EEP, align 2
  %20 = sext i16 %19 to i32
  %21 = load i16, i16* @EE_CS, align 2
  %22 = sext i16 %21 to i32
  %23 = or i32 %20, %22
  %24 = trunc i32 %23 to i16
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @outb(i16 signext %24, i32 %25)
  store i32 10, i32* %5, align 4
  br label %27

27:                                               ; preds = %68, %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %71

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i16, i16* @EE_DO, align 2
  %38 = sext i16 %37 to i32
  br label %40

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %36
  %41 = phi i32 [ %38, %36 ], [ 0, %39 ]
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %9, align 2
  %43 = load i16, i16* @EE_EEP, align 2
  %44 = sext i16 %43 to i32
  %45 = load i16, i16* @EE_CS, align 2
  %46 = sext i16 %45 to i32
  %47 = or i32 %44, %46
  %48 = load i16, i16* %9, align 2
  %49 = sext i16 %48 to i32
  %50 = or i32 %47, %49
  %51 = trunc i32 %50 to i16
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @outb_p(i16 signext %51, i32 %52)
  %54 = load i16, i16* @EE_EEP, align 2
  %55 = sext i16 %54 to i32
  %56 = load i16, i16* @EE_CS, align 2
  %57 = sext i16 %56 to i32
  %58 = or i32 %55, %57
  %59 = load i16, i16* %9, align 2
  %60 = sext i16 %59 to i32
  %61 = or i32 %58, %60
  %62 = load i16, i16* @EE_CK, align 2
  %63 = sext i16 %62 to i32
  %64 = or i32 %61, %63
  %65 = trunc i32 %64 to i16
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @outb_p(i16 signext %65, i32 %66)
  br label %68

68:                                               ; preds = %40
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %5, align 4
  br label %27

71:                                               ; preds = %27
  %72 = load i16, i16* @EE_EEP, align 2
  %73 = sext i16 %72 to i32
  %74 = load i16, i16* @EE_CS, align 2
  %75 = sext i16 %74 to i32
  %76 = or i32 %73, %75
  %77 = trunc i32 %76 to i16
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @outb(i16 signext %77, i32 %78)
  store i32 16, i32* %5, align 4
  br label %80

80:                                               ; preds = %113, %71
  %81 = load i32, i32* %5, align 4
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %116

83:                                               ; preds = %80
  %84 = load i16, i16* @EE_EEP, align 2
  %85 = sext i16 %84 to i32
  %86 = load i16, i16* @EE_CS, align 2
  %87 = sext i16 %86 to i32
  %88 = or i32 %85, %87
  %89 = load i16, i16* @EE_CK, align 2
  %90 = sext i16 %89 to i32
  %91 = or i32 %88, %90
  %92 = trunc i32 %91 to i16
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @outb_p(i16 signext %92, i32 %93)
  %95 = load i32, i32* %6, align 4
  %96 = shl i32 %95, 1
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @inb(i32 %97)
  %99 = load i32, i32* @EE_DI, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  %102 = zext i1 %101 to i64
  %103 = select i1 %101, i32 1, i32 0
  %104 = or i32 %96, %103
  store i32 %104, i32* %6, align 4
  %105 = load i16, i16* @EE_EEP, align 2
  %106 = sext i16 %105 to i32
  %107 = load i16, i16* @EE_CS, align 2
  %108 = sext i16 %107 to i32
  %109 = or i32 %106, %108
  %110 = trunc i32 %109 to i16
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @outb_p(i16 signext %110, i32 %111)
  br label %113

113:                                              ; preds = %83
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %5, align 4
  br label %80

116:                                              ; preds = %80
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @outb(i16 signext 0, i32 %117)
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @outb(i16 signext, i32) #1

declare dso_local i32 @outb_p(i16 signext, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
