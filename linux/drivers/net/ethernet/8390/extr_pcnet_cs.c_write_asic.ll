; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_write_asic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_write_asic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DLINK_EEPROM = common dso_local global i32 0, align 4
@EE_READ_CMD = common dso_local global i32 0, align 4
@EE_ASIC = common dso_local global i16 0, align 2
@EE_CS = common dso_local global i16 0, align 2
@EE_DI = common dso_local global i16 0, align 2
@EE_DO = common dso_local global i16 0, align 2
@EE_CK = common dso_local global i16 0, align 2
@EE_ADOT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i16)* @write_asic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_asic(i32 %0, i32 %1, i16 signext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i16 %2, i16* %6, align 2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @DLINK_EEPROM, align 4
  %13 = add i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @EE_READ_CMD, align 4
  %16 = shl i32 %15, 8
  %17 = or i32 %14, %16
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call signext i16 @read_eeprom(i32 %18, i32 %19)
  %21 = sext i16 %20 to i32
  %22 = load i16, i16* %6, align 2
  %23 = sext i16 %22 to i32
  %24 = or i32 %23, %21
  %25 = trunc i32 %24 to i16
  store i16 %25, i16* %6, align 2
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @outb(i16 signext 0, i32 %26)
  %28 = load i16, i16* @EE_ASIC, align 2
  %29 = sext i16 %28 to i32
  %30 = load i16, i16* @EE_CS, align 2
  %31 = sext i16 %30 to i32
  %32 = or i32 %29, %31
  %33 = load i16, i16* @EE_DI, align 2
  %34 = sext i16 %33 to i32
  %35 = or i32 %32, %34
  %36 = trunc i32 %35 to i16
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @outb(i16 signext %36, i32 %37)
  %39 = load i32, i32* %10, align 4
  %40 = ashr i32 %39, 1
  store i32 %40, i32* %10, align 4
  store i32 9, i32* %7, align 4
  br label %41

41:                                               ; preds = %102, %3
  %42 = load i32, i32* %7, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %105

44:                                               ; preds = %41
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %7, align 4
  %47 = shl i32 1, %46
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i16, i16* @EE_DO, align 2
  %52 = sext i16 %51 to i32
  br label %54

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32 [ %52, %50 ], [ 0, %53 ]
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %9, align 2
  %57 = load i16, i16* @EE_ASIC, align 2
  %58 = sext i16 %57 to i32
  %59 = load i16, i16* @EE_CS, align 2
  %60 = sext i16 %59 to i32
  %61 = or i32 %58, %60
  %62 = load i16, i16* @EE_DI, align 2
  %63 = sext i16 %62 to i32
  %64 = or i32 %61, %63
  %65 = load i16, i16* %9, align 2
  %66 = sext i16 %65 to i32
  %67 = or i32 %64, %66
  %68 = trunc i32 %67 to i16
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @outb_p(i16 signext %68, i32 %69)
  %71 = load i16, i16* @EE_ASIC, align 2
  %72 = sext i16 %71 to i32
  %73 = load i16, i16* @EE_CS, align 2
  %74 = sext i16 %73 to i32
  %75 = or i32 %72, %74
  %76 = load i16, i16* @EE_DI, align 2
  %77 = sext i16 %76 to i32
  %78 = or i32 %75, %77
  %79 = load i16, i16* %9, align 2
  %80 = sext i16 %79 to i32
  %81 = or i32 %78, %80
  %82 = load i16, i16* @EE_CK, align 2
  %83 = sext i16 %82 to i32
  %84 = or i32 %81, %83
  %85 = trunc i32 %84 to i16
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @outb_p(i16 signext %85, i32 %86)
  %88 = load i16, i16* @EE_ASIC, align 2
  %89 = sext i16 %88 to i32
  %90 = load i16, i16* @EE_CS, align 2
  %91 = sext i16 %90 to i32
  %92 = or i32 %89, %91
  %93 = load i16, i16* @EE_DI, align 2
  %94 = sext i16 %93 to i32
  %95 = or i32 %92, %94
  %96 = load i16, i16* %9, align 2
  %97 = sext i16 %96 to i32
  %98 = or i32 %95, %97
  %99 = trunc i32 %98 to i16
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @outb_p(i16 signext %99, i32 %100)
  br label %102

102:                                              ; preds = %54
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %7, align 4
  br label %41

105:                                              ; preds = %41
  %106 = load i16, i16* @EE_ASIC, align 2
  %107 = sext i16 %106 to i32
  %108 = load i16, i16* @EE_CS, align 2
  %109 = sext i16 %108 to i32
  %110 = or i32 %107, %109
  %111 = trunc i32 %110 to i16
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @outb(i16 signext %111, i32 %112)
  %114 = load i16, i16* @EE_ASIC, align 2
  %115 = sext i16 %114 to i32
  %116 = load i16, i16* @EE_CS, align 2
  %117 = sext i16 %116 to i32
  %118 = or i32 %115, %117
  %119 = load i16, i16* @EE_CK, align 2
  %120 = sext i16 %119 to i32
  %121 = or i32 %118, %120
  %122 = trunc i32 %121 to i16
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @outb(i16 signext %122, i32 %123)
  %125 = load i16, i16* @EE_ASIC, align 2
  %126 = sext i16 %125 to i32
  %127 = load i16, i16* @EE_CS, align 2
  %128 = sext i16 %127 to i32
  %129 = or i32 %126, %128
  %130 = trunc i32 %129 to i16
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @outb(i16 signext %130, i32 %131)
  store i32 15, i32* %7, align 4
  br label %133

133:                                              ; preds = %186, %105
  %134 = load i32, i32* %7, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %189

136:                                              ; preds = %133
  %137 = load i16, i16* %6, align 2
  %138 = sext i16 %137 to i32
  %139 = load i32, i32* %7, align 4
  %140 = shl i32 1, %139
  %141 = and i32 %138, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %136
  %144 = load i16, i16* @EE_ADOT, align 2
  %145 = sext i16 %144 to i32
  br label %147

146:                                              ; preds = %136
  br label %147

147:                                              ; preds = %146, %143
  %148 = phi i32 [ %145, %143 ], [ 0, %146 ]
  %149 = trunc i32 %148 to i16
  store i16 %149, i16* %9, align 2
  %150 = load i16, i16* @EE_ASIC, align 2
  %151 = sext i16 %150 to i32
  %152 = load i16, i16* @EE_CS, align 2
  %153 = sext i16 %152 to i32
  %154 = or i32 %151, %153
  %155 = load i16, i16* %9, align 2
  %156 = sext i16 %155 to i32
  %157 = or i32 %154, %156
  %158 = trunc i32 %157 to i16
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @outb_p(i16 signext %158, i32 %159)
  %161 = load i16, i16* @EE_ASIC, align 2
  %162 = sext i16 %161 to i32
  %163 = load i16, i16* @EE_CS, align 2
  %164 = sext i16 %163 to i32
  %165 = or i32 %162, %164
  %166 = load i16, i16* %9, align 2
  %167 = sext i16 %166 to i32
  %168 = or i32 %165, %167
  %169 = load i16, i16* @EE_CK, align 2
  %170 = sext i16 %169 to i32
  %171 = or i32 %168, %170
  %172 = trunc i32 %171 to i16
  %173 = load i32, i32* %8, align 4
  %174 = call i32 @outb_p(i16 signext %172, i32 %173)
  %175 = load i16, i16* @EE_ASIC, align 2
  %176 = sext i16 %175 to i32
  %177 = load i16, i16* @EE_CS, align 2
  %178 = sext i16 %177 to i32
  %179 = or i32 %176, %178
  %180 = load i16, i16* %9, align 2
  %181 = sext i16 %180 to i32
  %182 = or i32 %179, %181
  %183 = trunc i32 %182 to i16
  %184 = load i32, i32* %8, align 4
  %185 = call i32 @outb_p(i16 signext %183, i32 %184)
  br label %186

186:                                              ; preds = %147
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* %7, align 4
  br label %133

189:                                              ; preds = %133
  %190 = load i16, i16* @EE_ASIC, align 2
  %191 = sext i16 %190 to i32
  %192 = load i16, i16* @EE_DI, align 2
  %193 = sext i16 %192 to i32
  %194 = or i32 %191, %193
  %195 = trunc i32 %194 to i16
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @outb(i16 signext %195, i32 %196)
  %198 = load i16, i16* @EE_ASIC, align 2
  %199 = sext i16 %198 to i32
  %200 = load i16, i16* @EE_DI, align 2
  %201 = sext i16 %200 to i32
  %202 = or i32 %199, %201
  %203 = load i16, i16* @EE_CK, align 2
  %204 = sext i16 %203 to i32
  %205 = or i32 %202, %204
  %206 = trunc i32 %205 to i16
  %207 = load i32, i32* %8, align 4
  %208 = call i32 @outb(i16 signext %206, i32 %207)
  %209 = load i16, i16* @EE_ASIC, align 2
  %210 = sext i16 %209 to i32
  %211 = load i16, i16* @EE_DI, align 2
  %212 = sext i16 %211 to i32
  %213 = or i32 %210, %212
  %214 = trunc i32 %213 to i16
  %215 = load i32, i32* %8, align 4
  %216 = call i32 @outb(i16 signext %214, i32 %215)
  %217 = load i32, i32* %8, align 4
  %218 = call i32 @outb(i16 signext 0, i32 %217)
  ret void
}

declare dso_local signext i16 @read_eeprom(i32, i32) #1

declare dso_local i32 @outb(i16 signext, i32) #1

declare dso_local i32 @outb_p(i16 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
