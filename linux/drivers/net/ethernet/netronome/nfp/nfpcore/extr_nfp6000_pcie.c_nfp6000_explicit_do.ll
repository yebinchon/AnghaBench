; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_nfp6000_explicit_do.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_nfp6000_explicit_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp_explicit = type { i32 }
%struct.nfp_cpp_explicit_command = type { i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64 }
%struct.nfp6000_explicit_priv = type { i32, i64, %struct.TYPE_6__, %struct.nfp6000_pcie* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.nfp6000_pcie = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_cpp_explicit*, %struct.nfp_cpp_explicit_command*, i32)* @nfp6000_explicit_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp6000_explicit_do(%struct.nfp_cpp_explicit* %0, %struct.nfp_cpp_explicit_command* %1, i32 %2) #0 {
  %4 = alloca %struct.nfp_cpp_explicit*, align 8
  %5 = alloca %struct.nfp_cpp_explicit_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp6000_explicit_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nfp6000_pcie*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x i32], align 4
  store %struct.nfp_cpp_explicit* %0, %struct.nfp_cpp_explicit** %4, align 8
  store %struct.nfp_cpp_explicit_command* %1, %struct.nfp_cpp_explicit_command** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.nfp_cpp_explicit*, %struct.nfp_cpp_explicit** %4, align 8
  %16 = call %struct.nfp6000_explicit_priv* @nfp_cpp_explicit_priv(%struct.nfp_cpp_explicit* %15)
  store %struct.nfp6000_explicit_priv* %16, %struct.nfp6000_explicit_priv** %7, align 8
  %17 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %18 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %17, i32 0, i32 3
  %19 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %18, align 8
  store %struct.nfp6000_pcie* %19, %struct.nfp6000_pcie** %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.nfp_cpp_explicit_command*, %struct.nfp_cpp_explicit_command** %5, align 8
  %21 = getelementptr inbounds %struct.nfp_cpp_explicit_command, %struct.nfp_cpp_explicit_command* %20, i32 0, i32 10
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load %struct.nfp_cpp_explicit_command*, %struct.nfp_cpp_explicit_command** %5, align 8
  %26 = getelementptr inbounds %struct.nfp_cpp_explicit_command, %struct.nfp_cpp_explicit_command* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 1, %27
  %29 = load i32, i32* %12, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %12, align 4
  br label %31

31:                                               ; preds = %24, %3
  %32 = load %struct.nfp_cpp_explicit_command*, %struct.nfp_cpp_explicit_command** %5, align 8
  %33 = getelementptr inbounds %struct.nfp_cpp_explicit_command, %struct.nfp_cpp_explicit_command* %32, i32 0, i32 9
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.nfp_cpp_explicit_command*, %struct.nfp_cpp_explicit_command** %5, align 8
  %38 = getelementptr inbounds %struct.nfp_cpp_explicit_command, %struct.nfp_cpp_explicit_command* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 1, %39
  %41 = load i32, i32* %12, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %36, %31
  %44 = load %struct.nfp_cpp_explicit_command*, %struct.nfp_cpp_explicit_command** %5, align 8
  %45 = getelementptr inbounds %struct.nfp_cpp_explicit_command, %struct.nfp_cpp_explicit_command* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %11, align 8
  %51 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %8, align 8
  br label %54

54:                                               ; preds = %49, %43
  %55 = load %struct.nfp_cpp_explicit_command*, %struct.nfp_cpp_explicit_command** %5, align 8
  %56 = getelementptr inbounds %struct.nfp_cpp_explicit_command, %struct.nfp_cpp_explicit_command* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %11, align 8
  %60 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %58, %62
  br i1 %63, label %64, label %82

64:                                               ; preds = %54
  %65 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %11, align 8
  %66 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %70 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 %72, 4
  %74 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %75 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %73, %77
  %79 = shl i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %68, %80
  store i64 %81, i64* %9, align 8
  br label %82

82:                                               ; preds = %64, %54
  %83 = load %struct.nfp_cpp_explicit_command*, %struct.nfp_cpp_explicit_command** %5, align 8
  %84 = getelementptr inbounds %struct.nfp_cpp_explicit_command, %struct.nfp_cpp_explicit_command* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %10, align 8
  %86 = load i64, i64* %10, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %82
  %89 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %11, align 8
  %90 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  store i64 %92, i64* %10, align 8
  br label %93

93:                                               ; preds = %88, %82
  %94 = load %struct.nfp_cpp_explicit_command*, %struct.nfp_cpp_explicit_command** %5, align 8
  %95 = getelementptr inbounds %struct.nfp_cpp_explicit_command, %struct.nfp_cpp_explicit_command* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %13, align 4
  %97 = load i64, i64* %10, align 8
  %98 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %11, align 8
  %99 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %97, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %93
  %104 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %105 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = shl i32 %107, 9
  %109 = add nsw i32 4096, %108
  %110 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %111 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 7
  %115 = add nsw i32 %109, %114
  store i32 %115, i32* %13, align 4
  br label %116

116:                                              ; preds = %103, %93
  %117 = load i32, i32* %12, align 4
  %118 = call i32 @NFP_PCIE_BAR_EXPLICIT_BAR0_SignalType(i32 %117)
  %119 = load %struct.nfp_cpp_explicit_command*, %struct.nfp_cpp_explicit_command** %5, align 8
  %120 = getelementptr inbounds %struct.nfp_cpp_explicit_command, %struct.nfp_cpp_explicit_command* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @NFP_CPP_ID_TOKEN_of(i32 %121)
  %123 = call i32 @NFP_PCIE_BAR_EXPLICIT_BAR0_Token(i32 %122)
  %124 = or i32 %118, %123
  %125 = load i32, i32* %6, align 4
  %126 = ashr i32 %125, 16
  %127 = call i32 @NFP_PCIE_BAR_EXPLICIT_BAR0_Address(i32 %126)
  %128 = or i32 %124, %127
  %129 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  store i32 %128, i32* %129, align 4
  %130 = load i64, i64* %9, align 8
  %131 = call i32 @NFP_PCIE_BAR_EXPLICIT_BAR1_SignalRef(i64 %130)
  %132 = load i64, i64* %10, align 8
  %133 = call i32 @NFP_PCIE_BAR_EXPLICIT_BAR1_DataMaster(i64 %132)
  %134 = or i32 %131, %133
  %135 = load i32, i32* %13, align 4
  %136 = call i32 @NFP_PCIE_BAR_EXPLICIT_BAR1_DataRef(i32 %135)
  %137 = or i32 %134, %136
  %138 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  store i32 %137, i32* %138, align 4
  %139 = load %struct.nfp_cpp_explicit_command*, %struct.nfp_cpp_explicit_command** %5, align 8
  %140 = getelementptr inbounds %struct.nfp_cpp_explicit_command, %struct.nfp_cpp_explicit_command* %139, i32 0, i32 8
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @NFP_CPP_ID_TARGET_of(i32 %141)
  %143 = call i32 @NFP_PCIE_BAR_EXPLICIT_BAR2_Target(i32 %142)
  %144 = load %struct.nfp_cpp_explicit_command*, %struct.nfp_cpp_explicit_command** %5, align 8
  %145 = getelementptr inbounds %struct.nfp_cpp_explicit_command, %struct.nfp_cpp_explicit_command* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @NFP_CPP_ID_ACTION_of(i32 %146)
  %148 = call i32 @NFP_PCIE_BAR_EXPLICIT_BAR2_Action(i32 %147)
  %149 = or i32 %143, %148
  %150 = load %struct.nfp_cpp_explicit_command*, %struct.nfp_cpp_explicit_command** %5, align 8
  %151 = getelementptr inbounds %struct.nfp_cpp_explicit_command, %struct.nfp_cpp_explicit_command* %150, i32 0, i32 7
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @NFP_PCIE_BAR_EXPLICIT_BAR2_Length(i32 %152)
  %154 = or i32 %149, %153
  %155 = load %struct.nfp_cpp_explicit_command*, %struct.nfp_cpp_explicit_command** %5, align 8
  %156 = getelementptr inbounds %struct.nfp_cpp_explicit_command, %struct.nfp_cpp_explicit_command* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @NFP_PCIE_BAR_EXPLICIT_BAR2_ByteMask(i32 %157)
  %159 = or i32 %154, %158
  %160 = load i64, i64* %8, align 8
  %161 = call i32 @NFP_PCIE_BAR_EXPLICIT_BAR2_SignalMaster(i64 %160)
  %162 = or i32 %159, %161
  %163 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  store i32 %162, i32* %163, align 4
  %164 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %11, align 8
  %165 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %266

169:                                              ; preds = %116
  %170 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %11, align 8
  %173 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %177 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %181 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @NFP_PCIE_BAR_EXPLICIT_BAR0(i32 %179, i32 %183)
  %185 = add nsw i64 %175, %184
  %186 = call i32 @writel(i32 %171, i64 %185)
  %187 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %11, align 8
  %190 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %194 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %198 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %197, i32 0, i32 2
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @NFP_PCIE_BAR_EXPLICIT_BAR1(i32 %196, i32 %200)
  %202 = add nsw i64 %192, %201
  %203 = call i32 @writel(i32 %188, i64 %202)
  %204 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %11, align 8
  %207 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %211 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %215 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call i64 @NFP_PCIE_BAR_EXPLICIT_BAR2(i32 %213, i32 %217)
  %219 = add nsw i64 %209, %218
  %220 = call i32 @writel(i32 %205, i64 %219)
  %221 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %11, align 8
  %222 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %226 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %230 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i64 @NFP_PCIE_BAR_EXPLICIT_BAR0(i32 %228, i32 %232)
  %234 = add nsw i64 %224, %233
  %235 = call i32 @readl(i64 %234)
  %236 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %11, align 8
  %237 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %241 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %245 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i64 @NFP_PCIE_BAR_EXPLICIT_BAR1(i32 %243, i32 %247)
  %249 = add nsw i64 %239, %248
  %250 = call i32 @readl(i64 %249)
  %251 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %11, align 8
  %252 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %256 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %260 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i64 @NFP_PCIE_BAR_EXPLICIT_BAR2(i32 %258, i32 %262)
  %264 = add nsw i64 %254, %263
  %265 = call i32 @readl(i64 %264)
  br label %315

266:                                              ; preds = %116
  %267 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %11, align 8
  %268 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %271 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %275 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = call i64 @NFP_PCIE_BAR_EXPLICIT_BAR0(i32 %273, i32 %277)
  %279 = add nsw i64 1024, %278
  %280 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @pci_write_config_dword(i32 %269, i64 %279, i32 %281)
  %283 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %11, align 8
  %284 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %287 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %286, i32 0, i32 2
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %291 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = call i64 @NFP_PCIE_BAR_EXPLICIT_BAR1(i32 %289, i32 %293)
  %295 = add nsw i64 1024, %294
  %296 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 1
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @pci_write_config_dword(i32 %285, i64 %295, i32 %297)
  %299 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %11, align 8
  %300 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %303 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %302, i32 0, i32 2
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %307 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %306, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = call i64 @NFP_PCIE_BAR_EXPLICIT_BAR2(i32 %305, i32 %309)
  %311 = add nsw i64 1024, %310
  %312 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i64 0, i64 2
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @pci_write_config_dword(i32 %301, i64 %311, i32 %313)
  br label %315

315:                                              ; preds = %266, %169
  %316 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %317 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = load i32, i32* %6, align 4
  %320 = load %struct.nfp6000_explicit_priv*, %struct.nfp6000_explicit_priv** %7, align 8
  %321 = getelementptr inbounds %struct.nfp6000_explicit_priv, %struct.nfp6000_explicit_priv* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = shl i32 1, %322
  %324 = sub nsw i32 %323, 1
  %325 = and i32 %319, %324
  %326 = sext i32 %325 to i64
  %327 = add nsw i64 %318, %326
  %328 = call i32 @readb(i64 %327)
  %329 = load i32, i32* %12, align 4
  ret i32 %329
}

declare dso_local %struct.nfp6000_explicit_priv* @nfp_cpp_explicit_priv(%struct.nfp_cpp_explicit*) #1

declare dso_local i32 @NFP_PCIE_BAR_EXPLICIT_BAR0_SignalType(i32) #1

declare dso_local i32 @NFP_PCIE_BAR_EXPLICIT_BAR0_Token(i32) #1

declare dso_local i32 @NFP_CPP_ID_TOKEN_of(i32) #1

declare dso_local i32 @NFP_PCIE_BAR_EXPLICIT_BAR0_Address(i32) #1

declare dso_local i32 @NFP_PCIE_BAR_EXPLICIT_BAR1_SignalRef(i64) #1

declare dso_local i32 @NFP_PCIE_BAR_EXPLICIT_BAR1_DataMaster(i64) #1

declare dso_local i32 @NFP_PCIE_BAR_EXPLICIT_BAR1_DataRef(i32) #1

declare dso_local i32 @NFP_PCIE_BAR_EXPLICIT_BAR2_Target(i32) #1

declare dso_local i32 @NFP_CPP_ID_TARGET_of(i32) #1

declare dso_local i32 @NFP_PCIE_BAR_EXPLICIT_BAR2_Action(i32) #1

declare dso_local i32 @NFP_CPP_ID_ACTION_of(i32) #1

declare dso_local i32 @NFP_PCIE_BAR_EXPLICIT_BAR2_Length(i32) #1

declare dso_local i32 @NFP_PCIE_BAR_EXPLICIT_BAR2_ByteMask(i32) #1

declare dso_local i32 @NFP_PCIE_BAR_EXPLICIT_BAR2_SignalMaster(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @NFP_PCIE_BAR_EXPLICIT_BAR0(i32, i32) #1

declare dso_local i64 @NFP_PCIE_BAR_EXPLICIT_BAR1(i32, i32) #1

declare dso_local i64 @NFP_PCIE_BAR_EXPLICIT_BAR2(i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @pci_write_config_dword(i32, i64, i32) #1

declare dso_local i32 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
