; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/seco-cec/extr_seco-cec.c_smb_word_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/seco-cec/extr_seco-cec.c_smb_word_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BRA_SMB_CMD_BYTE_DATA = common dso_local global i16 0, align 2
@BRA_SMB_CMD_WORD_DATA = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@SMBTIMEOUT = common dso_local global i32 0, align 4
@HSTS = common dso_local global i32 0, align 4
@BRA_INUSE_STS = common dso_local global i32 0, align 4
@SMB_POLL_UDELAY = common dso_local global i32 0, align 4
@HCNT = common dso_local global i32 0, align 4
@XMIT_SLVA = common dso_local global i32 0, align 4
@HCMD = common dso_local global i32 0, align 4
@SMBUS_WRITE = common dso_local global i32 0, align 4
@HDAT0 = common dso_local global i32 0, align 4
@HDAT1 = common dso_local global i32 0, align 4
@BRA_START = common dso_local global i16 0, align 2
@BRA_HOST_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@BRA_HSTS_ERR_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SMBUS_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16, i32, i32, i32, i32, i32*)* @smb_word_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_word_op(i16 signext %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i16, align 2
  %16 = alloca i32, align 4
  store i16 %0, i16* %8, align 2
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %16, align 4
  %17 = load i16, i16* %8, align 2
  %18 = sext i16 %17 to i32
  switch i32 %18, label %23 [
    i32 129, label %19
    i32 128, label %21
  ]

19:                                               ; preds = %6
  %20 = load i16, i16* @BRA_SMB_CMD_BYTE_DATA, align 2
  store i16 %20, i16* %15, align 2
  br label %26

21:                                               ; preds = %6
  %22 = load i16, i16* @BRA_SMB_CMD_WORD_DATA, align 2
  store i16 %22, i16* %15, align 2
  br label %26

23:                                               ; preds = %6
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %136

26:                                               ; preds = %21, %19
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %41, %26
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @SMBTIMEOUT, align 4
  %30 = icmp ule i32 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32, i32* @HSTS, align 4
  %33 = call i32 @inb(i32 %32)
  %34 = load i32, i32* @BRA_INUSE_STS, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  br label %44

38:                                               ; preds = %31
  %39 = load i32, i32* @SMB_POLL_UDELAY, align 4
  %40 = call i32 @udelay(i32 %39)
  br label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %14, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %14, align 4
  br label %27

44:                                               ; preds = %37, %27
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @SMBTIMEOUT, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @HSTS, align 4
  %50 = call i32 @outb(i32 255, i32 %49)
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i32, i32* @HCNT, align 4
  %53 = call i32 @outb(i32 0, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, 254
  %56 = load i32, i32* %12, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @XMIT_SLVA, align 4
  %59 = call i32 @outb(i32 %57, i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @HCMD, align 4
  %62 = call i32 @outb(i32 %60, i32 %61)
  %63 = load i32, i32* @HCNT, align 4
  %64 = call i32 @inb(i32 %63)
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @SMBUS_WRITE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %51
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @HDAT0, align 4
  %71 = call i32 @outb(i32 %69, i32 %70)
  %72 = load i32, i32* %11, align 4
  %73 = ashr i32 %72, 8
  %74 = load i32, i32* @HDAT1, align 4
  %75 = call i32 @outb(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %68, %51
  %77 = load i16, i16* @BRA_START, align 2
  %78 = sext i16 %77 to i32
  %79 = load i16, i16* %15, align 2
  %80 = sext i16 %79 to i32
  %81 = add nsw i32 %78, %80
  %82 = load i32, i32* @HCNT, align 4
  %83 = call i32 @outb(i32 %81, i32 %82)
  store i32 0, i32* %14, align 4
  br label %84

84:                                               ; preds = %98, %76
  %85 = load i32, i32* %14, align 4
  %86 = load i32, i32* @SMBTIMEOUT, align 4
  %87 = icmp ule i32 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %84
  %89 = load i32, i32* @HSTS, align 4
  %90 = call i32 @inb(i32 %89)
  %91 = load i32, i32* @BRA_HOST_BUSY, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %88
  br label %101

95:                                               ; preds = %88
  %96 = load i32, i32* @SMB_POLL_UDELAY, align 4
  %97 = call i32 @udelay(i32 %96)
  br label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %14, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %84

101:                                              ; preds = %94, %84
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* @SMBTIMEOUT, align 4
  %104 = icmp ugt i32 %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32, i32* @EBUSY, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %16, align 4
  br label %132

108:                                              ; preds = %101
  %109 = load i32, i32* @HSTS, align 4
  %110 = call i32 @inb(i32 %109)
  %111 = load i32, i32* @BRA_HSTS_ERR_MASK, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %108
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %16, align 4
  br label %132

117:                                              ; preds = %108
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @SMBUS_READ, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %117
  %122 = load i32, i32* @HDAT0, align 4
  %123 = call i32 @inb(i32 %122)
  %124 = and i32 %123, 255
  %125 = load i32, i32* @HDAT1, align 4
  %126 = call i32 @inb(i32 %125)
  %127 = and i32 %126, 255
  %128 = shl i32 %127, 8
  %129 = add nsw i32 %124, %128
  %130 = load i32*, i32** %13, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %121, %117
  br label %132

132:                                              ; preds = %131, %114, %105
  %133 = load i32, i32* @HSTS, align 4
  %134 = call i32 @outb(i32 255, i32 %133)
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %7, align 4
  br label %136

136:                                              ; preds = %132, %23
  %137 = load i32, i32* %7, align 4
  ret i32 %137
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
